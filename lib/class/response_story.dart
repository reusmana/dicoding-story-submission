import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app_submission/class/story.dart';

part 'response_story.g.dart';

part 'response_story.freezed.dart';

@freezed
abstract class ResponseStory with _$ResponseStory {
  const factory ResponseStory({
    required bool error,
    required String message,
    required List<Story> listStory,
  }) = _ResponseStory;

  factory ResponseStory.fromJson(Map<String, dynamic> json) =>
      _$ResponseStoryFromJson(json);
}
