// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_success_add_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseSuccessAddStory {

 bool get error; String get message;
/// Create a copy of ResponseSuccessAddStory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseSuccessAddStoryCopyWith<ResponseSuccessAddStory> get copyWith => _$ResponseSuccessAddStoryCopyWithImpl<ResponseSuccessAddStory>(this as ResponseSuccessAddStory, _$identity);

  /// Serializes this ResponseSuccessAddStory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseSuccessAddStory&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message);

@override
String toString() {
  return 'ResponseSuccessAddStory(error: $error, message: $message)';
}


}

/// @nodoc
abstract mixin class $ResponseSuccessAddStoryCopyWith<$Res>  {
  factory $ResponseSuccessAddStoryCopyWith(ResponseSuccessAddStory value, $Res Function(ResponseSuccessAddStory) _then) = _$ResponseSuccessAddStoryCopyWithImpl;
@useResult
$Res call({
 bool error, String message
});




}
/// @nodoc
class _$ResponseSuccessAddStoryCopyWithImpl<$Res>
    implements $ResponseSuccessAddStoryCopyWith<$Res> {
  _$ResponseSuccessAddStoryCopyWithImpl(this._self, this._then);

  final ResponseSuccessAddStory _self;
  final $Res Function(ResponseSuccessAddStory) _then;

/// Create a copy of ResponseSuccessAddStory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? message = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResponseSuccessAddStory implements ResponseSuccessAddStory {
  const _ResponseSuccessAddStory({required this.error, required this.message});
  factory _ResponseSuccessAddStory.fromJson(Map<String, dynamic> json) => _$ResponseSuccessAddStoryFromJson(json);

@override final  bool error;
@override final  String message;

/// Create a copy of ResponseSuccessAddStory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseSuccessAddStoryCopyWith<_ResponseSuccessAddStory> get copyWith => __$ResponseSuccessAddStoryCopyWithImpl<_ResponseSuccessAddStory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseSuccessAddStoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseSuccessAddStory&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message);

@override
String toString() {
  return 'ResponseSuccessAddStory(error: $error, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResponseSuccessAddStoryCopyWith<$Res> implements $ResponseSuccessAddStoryCopyWith<$Res> {
  factory _$ResponseSuccessAddStoryCopyWith(_ResponseSuccessAddStory value, $Res Function(_ResponseSuccessAddStory) _then) = __$ResponseSuccessAddStoryCopyWithImpl;
@override @useResult
$Res call({
 bool error, String message
});




}
/// @nodoc
class __$ResponseSuccessAddStoryCopyWithImpl<$Res>
    implements _$ResponseSuccessAddStoryCopyWith<$Res> {
  __$ResponseSuccessAddStoryCopyWithImpl(this._self, this._then);

  final _ResponseSuccessAddStory _self;
  final $Res Function(_ResponseSuccessAddStory) _then;

/// Create a copy of ResponseSuccessAddStory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? message = null,}) {
  return _then(_ResponseSuccessAddStory(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
