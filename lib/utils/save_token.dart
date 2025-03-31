import 'package:shared_preferences/shared_preferences.dart';

class SaveToken {
  final String key = 'token';
  static Future<bool> savedToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString('token', token);
    return result;
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static Future<bool> isTokenExitsting() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.get('token');
    if (result != null) {
      return true;
    }
    return false;
  }

  static Future<bool> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.remove('token');
    return result;
  }
}
