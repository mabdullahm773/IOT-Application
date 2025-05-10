import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode;

  ThemeProvider({this.isDarkMode = false});

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(bool isOn) {
    isDarkMode = isOn;
    notifyListeners();
  }
}
