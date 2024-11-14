import 'package:flutter/material.dart';
import 'package:recipeapp/themes/dark_mode.dart';
import 'package:recipeapp/themes/light.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  ThemeData get themeData => _themeData;
  bool get isDark => _themeData == darkTheme;
  set themeData(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void switchThemes() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }
  }
}
