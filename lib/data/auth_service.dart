import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:story_app_submission/class/responses_auth.dart';
import 'package:story_app_submission/utils/save_token.dart';

class AuthService {
  static const String baseUrl = 'https://story-api.dicoding.dev/v1';

  Future<ResponsesAuth> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: {'email': email, 'password': password},
    );

    bool saved = false;

    final result = ResponsesAuth.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200) {
      if (result.loginResult != null) {
        saved = await SaveToken.savedToken(result.loginResult!.token);
      }
      if (!saved) {
        throw Exception('Login gagal');
      }
      return result;
    } else {
      throw Exception('Login gagal');
    }
  }

  Future<ResponsesAuth> register(
    String name,
    String email,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: {'name': name, 'email': email, 'password': password},
    );

    if (response.statusCode == 201) {
      return ResponsesAuth.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Registrasi gagal');
    }
  }

  Future<bool> logout() async {
    final token = await SaveToken.clearToken();
    if (token) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> checkToken() async {
    final token = await SaveToken.getToken();
    if (token != null) {
      return true;
    } else {
      return false;
    }
  }
}
