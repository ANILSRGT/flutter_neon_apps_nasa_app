import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_themes_enum.dart';

final class ThemeNotifier extends ChangeNotifier {
  AppThemesEnum _currentTheme = AppThemesEnum.main;
  ThemeMode _currentThemeMode = ThemeMode.system;

  AppThemesEnum get currentTheme => _currentTheme;
  ThemeMode get currentThemeMode => _currentThemeMode;

  void setTheme(AppThemesEnum theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void setThemeMode(ThemeMode themeMode) {
    _currentThemeMode = themeMode;
    notifyListeners();
  }
}
