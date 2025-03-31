import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/common.dart';
import 'package:story_app_submission/providers/story_provider.dart';
import 'package:story_app_submission/utils/no_internet.dart';

class DetailStoryScreen extends StatefulWidget {
  final String storyId;
  const DetailStoryScreen({super.key, required this.storyId});

  @override
  State<DetailStoryScreen> createState() => _DetailStoryScreenState();
}

class _DetailStoryScreenState extends State<DetailStoryScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (mounted) {
        context.read<StoryProvider>().getDetailStory(widget.storyId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<StoryProvider>(
          builder: (context, ref, child) {
            if (ref.isLoading) {
              return Center(child: const CircularProgressIndicator());
            }
            if (ref.errorMessage != null) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    NoInternet.getFriendlyErrorMessage(ref.errorMessage!),
                  ),
                ),
              );
            }
            final story = ref.story;
            if (ref.story == null) {
              return Center(child: Text(AppLocalizations.of(context)!.noStory));
            }
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: story!.id,
                      child: Image.network(
                        story.photoUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        key: const ValueKey('backButton'),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          story.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox.square(dimension: 20),
                        Text(
                          story.description,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
