import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_success_add_story.g.dart';
part 'response_success_add_story.freezed.dart';

@freezed
abstract class ResponseSuccessAddStory with _$ResponseSuccessAddStory {
  const factory ResponseSuccessAddStory({
    required bool error,
    required String message,
  }) = _ResponseSuccessAddStory;

  factory ResponseSuccessAddStory.fromJson(Map<String, dynamic> json) =>
      _$ResponseSuccessAddStoryFromJson(json);
}
