// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsesAuth _$ResponsesAuthFromJson(Map<String, dynamic> json) =>
    _ResponsesAuth(
      message: json['message'] as String,
      error: json['error'] as bool,
      loginResult:
          json['loginResult'] == null
              ? null
              : User.fromJson(json['loginResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponsesAuthToJson(_ResponsesAuth instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'loginResult': instance.loginResult,
    };
