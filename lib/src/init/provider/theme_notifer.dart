import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum AppThemes {
  LIGHT,
  DARK,
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  AppThemes _currentThemeEnum = AppThemes.LIGHT;

  AppThemes get currentThemeEnum => _currentThemeEnum;

  ThemeData get currentTheme => _currentTheme;

  void changeValue(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }

  void changeTheme() {
    if (_currentThemeEnum == AppThemes.LIGHT) {
      _currentTheme = ThemeData.dark();
      _currentThemeEnum = AppThemes.DARK;
    } else {
      _currentTheme = ThemeData.light();
      _currentThemeEnum = AppThemes.LIGHT;
    }
    notifyListeners();
  }
}
