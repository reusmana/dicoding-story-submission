import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:story_app_submission/class/response_success_add_story.dart';
import 'package:story_app_submission/class/story.dart';
import 'package:story_app_submission/class/story_add.dart';
import 'package:story_app_submission/data/story_service.dart';
import 'package:image/image.dart' as img;

class StoryProvider extends ChangeNotifier {
  final StoryService storyService;
  StoryProvider(this.storyService);

  bool isLoading = false;
  bool loadingPaginate = false;
  String? errorMessage;
  List<Story> stories = [];
  Story? story;
  ResponseSuccessAddStory? storyAddResponse;

  int? pageItems = 1;
  int? sizeItems = 10;

  Future<void> getStories() async {
    if (sizeItems == 10) {
      isLoading = true;
      notifyListeners();
    }
    try {
      if (sizeItems != null && sizeItems! >= 20) {
        loadingPaginate = true;
        notifyListeners();
      }
      final result = await storyService.getStories(pageItems!, sizeItems!);
      stories = result.listStory;
      if (result.listStory.length < sizeItems!) {
        sizeItems = null;
      } else {
        sizeItems = sizeItems! + 10;
      }
      loadingPaginate = false;
      isLoading = false;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getDetailStory(String storyId) async {
    isLoading = true;
    notifyListeners();
    try {
      final result = await storyService.getDetailStory(storyId);
      story = result.story;
      isLoading = false;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
    }
  }

  Future<List<int>> compressImage(List<int> bytes) async {
    int imageLength = bytes.length;
    if (imageLength < 1000000) return bytes;
    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    int compressQuality = 100;
    int length = imageLength;
    List<int> newByte = [];
    do {
      compressQuality -= 10;
      newByte = img.encodeJpg(image, quality: compressQuality);
      length = newByte.length;
    } while (length > 1000000);
    return newByte;
  }

  Future<void> addStory(StoryAdd story) async {
    isLoading = true;
    notifyListeners();
    try {
      final result = await storyService.addStory(story);
      storyAddResponse = result;
      isLoading = false;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
    }
  }
}
