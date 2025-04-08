// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponsesAuth {

 String get message; bool get error;@JsonKey(name: 'loginResult') User? get loginResult;
/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsesAuthCopyWith<ResponsesAuth> get copyWith => _$ResponsesAuthCopyWithImpl<ResponsesAuth>(this as ResponsesAuth, _$identity);

  /// Serializes this ResponsesAuth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsesAuth&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.loginResult, loginResult) || other.loginResult == loginResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,error,loginResult);

@override
String toString() {
  return 'ResponsesAuth(message: $message, error: $error, loginResult: $loginResult)';
}


}

/// @nodoc
abstract mixin class $ResponsesAuthCopyWith<$Res>  {
  factory $ResponsesAuthCopyWith(ResponsesAuth value, $Res Function(ResponsesAuth) _then) = _$ResponsesAuthCopyWithImpl;
@useResult
$Res call({
 String message, bool error,@JsonKey(name: 'loginResult') User? loginResult
});


$UserCopyWith<$Res>? get loginResult;

}
/// @nodoc
class _$ResponsesAuthCopyWithImpl<$Res>
    implements $ResponsesAuthCopyWith<$Res> {
  _$ResponsesAuthCopyWithImpl(this._self, this._then);

  final ResponsesAuth _self;
  final $Res Function(ResponsesAuth) _then;

/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? error = null,Object? loginResult = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,loginResult: freezed == loginResult ? _self.loginResult : loginResult // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get loginResult {
    if (_self.loginResult == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.loginResult!, (value) {
    return _then(_self.copyWith(loginResult: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ResponsesAuth implements ResponsesAuth {
  const _ResponsesAuth({required this.message, required this.error, @JsonKey(name: 'loginResult') required this.loginResult});
  factory _ResponsesAuth.fromJson(Map<String, dynamic> json) => _$ResponsesAuthFromJson(json);

@override final  String message;
@override final  bool error;
@override@JsonKey(name: 'loginResult') final  User? loginResult;

/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsesAuthCopyWith<_ResponsesAuth> get copyWith => __$ResponsesAuthCopyWithImpl<_ResponsesAuth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsesAuthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsesAuth&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error)&&(identical(other.loginResult, loginResult) || other.loginResult == loginResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,error,loginResult);

@override
String toString() {
  return 'ResponsesAuth(message: $message, error: $error, loginResult: $loginResult)';
}


}

/// @nodoc
abstract mixin class _$ResponsesAuthCopyWith<$Res> implements $ResponsesAuthCopyWith<$Res> {
  factory _$ResponsesAuthCopyWith(_ResponsesAuth value, $Res Function(_ResponsesAuth) _then) = __$ResponsesAuthCopyWithImpl;
@override @useResult
$Res call({
 String message, bool error,@JsonKey(name: 'loginResult') User? loginResult
});


@override $UserCopyWith<$Res>? get loginResult;

}
/// @nodoc
class __$ResponsesAuthCopyWithImpl<$Res>
    implements _$ResponsesAuthCopyWith<$Res> {
  __$ResponsesAuthCopyWithImpl(this._self, this._then);

  final _ResponsesAuth _self;
  final $Res Function(_ResponsesAuth) _then;

/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? error = null,Object? loginResult = freezed,}) {
  return _then(_ResponsesAuth(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,loginResult: freezed == loginResult ? _self.loginResult : loginResult // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of ResponsesAuth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get loginResult {
    if (_self.loginResult == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.loginResult!, (value) {
    return _then(_self.copyWith(loginResult: value));
  });
}
}

// dart format on
