import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_add.g.dart';
part 'story_add.freezed.dart';

@freezed
abstract class StoryAdd with _$StoryAdd {
  const factory StoryAdd({
    required String description,
    required List<int> photo,
    required String filename,
    double? lat,
    double? lon,
  }) = _StoryAdd;

  factory StoryAdd.fromJson(Map<String, dynamic> json) =>
      _$StoryAddFromJson(json);
}
