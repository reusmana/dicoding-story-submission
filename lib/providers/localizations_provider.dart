import 'package:flutter/material.dart';

class LocalizationsProvider extends ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  void setLocale(Locale? locale) {
    if (locale != _locale) {
      _locale = locale;
      notifyListeners();
    }
  }
}
