import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/cache/cache_manager.dart';
import 'package:neon_apps_nasa_app/core/enums/app_themes_enum.dart';

final class ThemeNotifier extends ChangeNotifier {
  AppThemesEnum _currentTheme = AppThemesEnum.main;
  ThemeMode _currentThemeMode = ThemeMode.system;

  AppThemesEnum get currentTheme => _currentTheme;
  ThemeMode get currentThemeMode => _currentThemeMode;

  void setTheme(AppThemesEnum theme) {
    _currentTheme = theme;
    CacheManager.I.theme.saveTheme(theme);
    notifyListeners();
  }

  void setThemeMode(ThemeMode themeMode) {
    _currentThemeMode = themeMode;
    CacheManager.I.themeMode.saveThemeMode(themeMode);
    notifyListeners();
  }
}
