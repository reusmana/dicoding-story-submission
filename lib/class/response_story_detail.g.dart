// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_story_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseStoryDetail _$ResponseStoryDetailFromJson(Map<String, dynamic> json) =>
    _ResponseStoryDetail(
      error: json['error'] as bool,
      message: json['message'] as String,
      story: Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseStoryDetailToJson(
  _ResponseStoryDetail instance,
) => <String, dynamic>{
  'error': instance.error,
  'message': instance.message,
  'story': instance.story,
};
