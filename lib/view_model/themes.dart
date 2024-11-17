import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isDarkMode = true;
  bool isMenuShowing=false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
  void toggleMenu(){
    isMenuShowing=!isMenuShowing;
    notifyListeners();
  }
}
