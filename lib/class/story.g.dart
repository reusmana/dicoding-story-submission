// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Story _$StoryFromJson(Map<String, dynamic> json) => _Story(
  name: json['name'] as String,
  description: json['description'] as String,
  photoUrl: json['photoUrl'] as String,
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$StoryToJson(_Story instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'photoUrl': instance.photoUrl,
  'id': instance.id,
  'createdAt': instance.createdAt,
  'lat': instance.lat,
  'lon': instance.lon,
};
