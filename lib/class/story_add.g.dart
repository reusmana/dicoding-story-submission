// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoryAdd _$StoryAddFromJson(Map<String, dynamic> json) => _StoryAdd(
  description: json['description'] as String,
  photo:
      (json['photo'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  filename: json['filename'] as String,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$StoryAddToJson(_StoryAdd instance) => <String, dynamic>{
  'description': instance.description,
  'photo': instance.photo,
  'filename': instance.filename,
  'lat': instance.lat,
  'lon': instance.lon,
};
