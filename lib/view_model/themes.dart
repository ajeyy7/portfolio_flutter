import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Toggle theme mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}