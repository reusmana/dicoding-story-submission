import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app_submission/class/story.dart';

part 'response_story_detail.g.dart';
part 'response_story_detail.freezed.dart';

@freezed
abstract class ResponseStoryDetail with _$ResponseStoryDetail {
  const factory ResponseStoryDetail({
    required bool error,
    required String message,
    @JsonKey(name: 'story') required Story story,
  }) = _ResponseStoryDetail;

  factory ResponseStoryDetail.fromJson(Map<String, dynamic> json) =>
      _$ResponseStoryDetailFromJson(json);
}
