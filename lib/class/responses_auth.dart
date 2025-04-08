import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app_submission/class/user.dart';

part 'responses_auth.g.dart';
part 'responses_auth.freezed.dart';

@freezed
abstract class ResponsesAuth with _$ResponsesAuth {
  const factory ResponsesAuth({
    required String message,
    required bool error,
    @JsonKey(name: 'loginResult') required User? loginResult,
  }) = _ResponsesAuth;

  factory ResponsesAuth.fromJson(Map<String, dynamic> json) =>
      _$ResponsesAuthFromJson(json);
}
