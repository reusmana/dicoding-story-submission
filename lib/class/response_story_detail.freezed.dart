// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_story_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseStoryDetail {

 bool get error; String get message;@JsonKey(name: 'story') Story get story;
/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseStoryDetailCopyWith<ResponseStoryDetail> get copyWith => _$ResponseStoryDetailCopyWithImpl<ResponseStoryDetail>(this as ResponseStoryDetail, _$identity);

  /// Serializes this ResponseStoryDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseStoryDetail&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&(identical(other.story, story) || other.story == story));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message,story);

@override
String toString() {
  return 'ResponseStoryDetail(error: $error, message: $message, story: $story)';
}


}

/// @nodoc
abstract mixin class $ResponseStoryDetailCopyWith<$Res>  {
  factory $ResponseStoryDetailCopyWith(ResponseStoryDetail value, $Res Function(ResponseStoryDetail) _then) = _$ResponseStoryDetailCopyWithImpl;
@useResult
$Res call({
 bool error, String message,@JsonKey(name: 'story') Story story
});


$StoryCopyWith<$Res> get story;

}
/// @nodoc
class _$ResponseStoryDetailCopyWithImpl<$Res>
    implements $ResponseStoryDetailCopyWith<$Res> {
  _$ResponseStoryDetailCopyWithImpl(this._self, this._then);

  final ResponseStoryDetail _self;
  final $Res Function(ResponseStoryDetail) _then;

/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? message = null,Object? story = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,story: null == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as Story,
  ));
}
/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryCopyWith<$Res> get story {
  
  return $StoryCopyWith<$Res>(_self.story, (value) {
    return _then(_self.copyWith(story: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ResponseStoryDetail implements ResponseStoryDetail {
  const _ResponseStoryDetail({required this.error, required this.message, @JsonKey(name: 'story') required this.story});
  factory _ResponseStoryDetail.fromJson(Map<String, dynamic> json) => _$ResponseStoryDetailFromJson(json);

@override final  bool error;
@override final  String message;
@override@JsonKey(name: 'story') final  Story story;

/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseStoryDetailCopyWith<_ResponseStoryDetail> get copyWith => __$ResponseStoryDetailCopyWithImpl<_ResponseStoryDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseStoryDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseStoryDetail&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&(identical(other.story, story) || other.story == story));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message,story);

@override
String toString() {
  return 'ResponseStoryDetail(error: $error, message: $message, story: $story)';
}


}

/// @nodoc
abstract mixin class _$ResponseStoryDetailCopyWith<$Res> implements $ResponseStoryDetailCopyWith<$Res> {
  factory _$ResponseStoryDetailCopyWith(_ResponseStoryDetail value, $Res Function(_ResponseStoryDetail) _then) = __$ResponseStoryDetailCopyWithImpl;
@override @useResult
$Res call({
 bool error, String message,@JsonKey(name: 'story') Story story
});


@override $StoryCopyWith<$Res> get story;

}
/// @nodoc
class __$ResponseStoryDetailCopyWithImpl<$Res>
    implements _$ResponseStoryDetailCopyWith<$Res> {
  __$ResponseStoryDetailCopyWithImpl(this._self, this._then);

  final _ResponseStoryDetail _self;
  final $Res Function(_ResponseStoryDetail) _then;

/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? message = null,Object? story = null,}) {
  return _then(_ResponseStoryDetail(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,story: null == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as Story,
  ));
}

/// Create a copy of ResponseStoryDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryCopyWith<$Res> get story {
  
  return $StoryCopyWith<$Res>(_self.story, (value) {
    return _then(_self.copyWith(story: value));
  });
}
}

// dart format on
