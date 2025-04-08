// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseStory _$ResponseStoryFromJson(Map<String, dynamic> json) =>
    _ResponseStory(
      error: json['error'] as bool,
      message: json['message'] as String,
      listStory:
          (json['listStory'] as List<dynamic>)
              .map((e) => Story.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ResponseStoryToJson(_ResponseStory instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'listStory': instance.listStory,
    };
