// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseStory {

 bool get error; String get message; List<Story> get listStory;
/// Create a copy of ResponseStory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseStoryCopyWith<ResponseStory> get copyWith => _$ResponseStoryCopyWithImpl<ResponseStory>(this as ResponseStory, _$identity);

  /// Serializes this ResponseStory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseStory&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.listStory, listStory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message,const DeepCollectionEquality().hash(listStory));

@override
String toString() {
  return 'ResponseStory(error: $error, message: $message, listStory: $listStory)';
}


}

/// @nodoc
abstract mixin class $ResponseStoryCopyWith<$Res>  {
  factory $ResponseStoryCopyWith(ResponseStory value, $Res Function(ResponseStory) _then) = _$ResponseStoryCopyWithImpl;
@useResult
$Res call({
 bool error, String message, List<Story> listStory
});




}
/// @nodoc
class _$ResponseStoryCopyWithImpl<$Res>
    implements $ResponseStoryCopyWith<$Res> {
  _$ResponseStoryCopyWithImpl(this._self, this._then);

  final ResponseStory _self;
  final $Res Function(ResponseStory) _then;

/// Create a copy of ResponseStory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? message = null,Object? listStory = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listStory: null == listStory ? _self.listStory : listStory // ignore: cast_nullable_to_non_nullable
as List<Story>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResponseStory implements ResponseStory {
  const _ResponseStory({required this.error, required this.message, required final  List<Story> listStory}): _listStory = listStory;
  factory _ResponseStory.fromJson(Map<String, dynamic> json) => _$ResponseStoryFromJson(json);

@override final  bool error;
@override final  String message;
 final  List<Story> _listStory;
@override List<Story> get listStory {
  if (_listStory is EqualUnmodifiableListView) return _listStory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listStory);
}


/// Create a copy of ResponseStory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseStoryCopyWith<_ResponseStory> get copyWith => __$ResponseStoryCopyWithImpl<_ResponseStory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseStoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseStory&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._listStory, _listStory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,message,const DeepCollectionEquality().hash(_listStory));

@override
String toString() {
  return 'ResponseStory(error: $error, message: $message, listStory: $listStory)';
}


}

/// @nodoc
abstract mixin class _$ResponseStoryCopyWith<$Res> implements $ResponseStoryCopyWith<$Res> {
  factory _$ResponseStoryCopyWith(_ResponseStory value, $Res Function(_ResponseStory) _then) = __$ResponseStoryCopyWithImpl;
@override @useResult
$Res call({
 bool error, String message, List<Story> listStory
});




}
/// @nodoc
class __$ResponseStoryCopyWithImpl<$Res>
    implements _$ResponseStoryCopyWith<$Res> {
  __$ResponseStoryCopyWithImpl(this._self, this._then);

  final _ResponseStory _self;
  final $Res Function(_ResponseStory) _then;

/// Create a copy of ResponseStory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? message = null,Object? listStory = null,}) {
  return _then(_ResponseStory(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listStory: null == listStory ? _self._listStory : listStory // ignore: cast_nullable_to_non_nullable
as List<Story>,
  ));
}


}

// dart format on
