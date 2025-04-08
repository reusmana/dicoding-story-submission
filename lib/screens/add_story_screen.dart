import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/class/story_add.dart';
import 'package:story_app_submission/common.dart';
import 'package:story_app_submission/providers/home_provider.dart';
import 'package:story_app_submission/providers/story_provider.dart';
import 'package:story_app_submission/widgets/put_maps.dart';

class AddStoryScreen extends StatefulWidget {
  final Function() onSend;
  const AddStoryScreen({super.key, required this.onSend});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  TextEditingController descriptionController = TextEditingController();
  late LatLng? maps;

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  void getMaps(LatLng latLng) async {
    print(latLng);
    maps = latLng;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.addStory)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              context.watch<HomeProvider>().imagePath == null
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage("assets/broken-image.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                  : _showImage(),
              PutMaps(
                selectMaps: (LatLng latLng) {
                  getMaps(latLng);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  maxLines: 5,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _onGalleryView(),
                    child: Text(AppLocalizations.of(context)!.gallery),
                  ),
                  ElevatedButton(
                    onPressed: () => _onCameraView(),
                    child: Text(AppLocalizations.of(context)!.camera),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<StoryProvider>(
                  builder: (context, storyProv, child) {
                    return ElevatedButton(
                      onPressed: () => _onUpload(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        storyProv.isLoading
                            ? AppLocalizations.of(context)!.uploading
                            : AppLocalizations.of(context)!.upload,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onUpload() async {
    final homeProvider = context.read<HomeProvider>();
    final storyProvider = context.read<StoryProvider>();
    final ScaffoldMessengerState scaffoldMessengerState = ScaffoldMessenger.of(
      context,
    );

    final imagePath = homeProvider.imagePath;
    final imageFile = homeProvider.fileImage;
    if (imagePath == null || imageFile == null) return;

    final fileName = imageFile.name;
    final bytes = await imageFile.readAsBytes();

    final newBytes = await storyProvider.compressImage(bytes);

    final story = StoryAdd(
      photo: newBytes,
      description: descriptionController.text,
      lat: maps?.latitude,
      lon: maps?.longitude,
      filename: fileName,
    );
    await storyProvider.addStory(story);

    if (storyProvider.storyAddResponse != null) {
      homeProvider.setImageFile(null);
      homeProvider.setImagePath(null);

      if (mounted) {
        context.read<StoryProvider>().getStories();
        scaffoldMessengerState.showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.addStoryAlertSuccess),
          ),
        );

        widget.onSend();
      }
    }

    if (storyProvider.errorMessage != null) {
      scaffoldMessengerState.showSnackBar(
        SnackBar(content: Text(storyProvider.errorMessage!)),
      );
    }
  }

  _onGalleryView() async {
    final provider = context.read<HomeProvider>();
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker pickers = ImagePicker();

    final XFile? pickersFile = await pickers.pickImage(
      source: ImageSource.gallery,
    );

    if (pickersFile != null) {
      provider.setImageFile(pickersFile);
      provider.setImagePath(pickersFile.path);
    }
  }

  _onCameraView() async {
    final provider = context.read<HomeProvider>();
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isMobile = !(isAndroid || isIos);
    if (isMobile) return;

    final ImagePicker pickers = ImagePicker();

    final XFile? pickersFile = await pickers.pickImage(
      source: ImageSource.camera,
    );

    if (pickersFile != null) {
      provider.setImageFile(pickersFile);
      provider.setImagePath(pickersFile.path);
    }
  }

  Widget _showImage() {
    final imagePath = context.watch<HomeProvider>().imagePath;
    return SizedBox(
      height: 400,
      width: double.infinity,
      child:
          kIsWeb
              ? Image.network(imagePath.toString(), fit: BoxFit.contain)
              : Image.file(File(imagePath.toString()), fit: BoxFit.contain),
    );
  }
}
