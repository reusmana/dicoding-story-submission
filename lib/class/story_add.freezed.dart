// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_add.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryAdd {

 String get description; List<int> get photo; String get filename; double? get lat; double? get lon;
/// Create a copy of StoryAdd
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoryAddCopyWith<StoryAdd> get copyWith => _$StoryAddCopyWithImpl<StoryAdd>(this as StoryAdd, _$identity);

  /// Serializes this StoryAdd to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryAdd&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photo, photo)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(photo),filename,lat,lon);

@override
String toString() {
  return 'StoryAdd(description: $description, photo: $photo, filename: $filename, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $StoryAddCopyWith<$Res>  {
  factory $StoryAddCopyWith(StoryAdd value, $Res Function(StoryAdd) _then) = _$StoryAddCopyWithImpl;
@useResult
$Res call({
 String description, List<int> photo, String filename, double? lat, double? lon
});




}
/// @nodoc
class _$StoryAddCopyWithImpl<$Res>
    implements $StoryAddCopyWith<$Res> {
  _$StoryAddCopyWithImpl(this._self, this._then);

  final StoryAdd _self;
  final $Res Function(StoryAdd) _then;

/// Create a copy of StoryAdd
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? photo = null,Object? filename = null,Object? lat = freezed,Object? lon = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as List<int>,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StoryAdd implements StoryAdd {
  const _StoryAdd({required this.description, required final  List<int> photo, required this.filename, this.lat, this.lon}): _photo = photo;
  factory _StoryAdd.fromJson(Map<String, dynamic> json) => _$StoryAddFromJson(json);

@override final  String description;
 final  List<int> _photo;
@override List<int> get photo {
  if (_photo is EqualUnmodifiableListView) return _photo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photo);
}

@override final  String filename;
@override final  double? lat;
@override final  double? lon;

/// Create a copy of StoryAdd
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryAddCopyWith<_StoryAdd> get copyWith => __$StoryAddCopyWithImpl<_StoryAdd>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoryAddToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryAdd&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photo, _photo)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_photo),filename,lat,lon);

@override
String toString() {
  return 'StoryAdd(description: $description, photo: $photo, filename: $filename, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class _$StoryAddCopyWith<$Res> implements $StoryAddCopyWith<$Res> {
  factory _$StoryAddCopyWith(_StoryAdd value, $Res Function(_StoryAdd) _then) = __$StoryAddCopyWithImpl;
@override @useResult
$Res call({
 String description, List<int> photo, String filename, double? lat, double? lon
});




}
/// @nodoc
class __$StoryAddCopyWithImpl<$Res>
    implements _$StoryAddCopyWith<$Res> {
  __$StoryAddCopyWithImpl(this._self, this._then);

  final _StoryAdd _self;
  final $Res Function(_StoryAdd) _then;

/// Create a copy of StoryAdd
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? photo = null,Object? filename = null,Object? lat = freezed,Object? lon = freezed,}) {
  return _then(_StoryAdd(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self._photo : photo // ignore: cast_nullable_to_non_nullable
as List<int>,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
