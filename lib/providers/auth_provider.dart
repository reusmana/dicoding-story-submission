import 'package:flutter/material.dart';
import 'package:story_app_submission/data/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService authService;
  bool isLoading = false;
  String? errorMessage;

  AuthProvider(this.authService);

  Future<bool> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      final result = await authService.login(email, password);
      isLoading = false;
      notifyListeners();
      if (result.error) {
        errorMessage = result.message;
        return false;
      }
      return true;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> register(String name, String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      final result = await authService.register(name, email, password);
      isLoading = false;
      notifyListeners();
      if (result.error) {
        errorMessage = result.message;
        return false;
      }
      return true;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> logout() async {
    isLoading = true;
    notifyListeners();
    try {
      final result = await authService.logout();
      isLoading = false;
      notifyListeners();
      if (!result) {
        throw Exception('Logout Gagal');
      }
      return true;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
