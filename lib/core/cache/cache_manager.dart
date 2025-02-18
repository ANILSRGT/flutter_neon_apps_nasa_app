import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neon_apps_nasa_app/core/enums/app_cache_keys.dart';
import 'package:neon_apps_nasa_app/core/enums/app_themes_enum.dart';
import 'package:neon_apps_nasa_app/core/models/user/user_settings_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

part 'cache_manager_theme_mode.dart';
part 'cache_manager_theme.dart';
part 'cache_manager_nasa_library_favorites.dart';
part 'cache_manager_user_settings.dart';

final class CacheManager {
  CacheManager._init();
  static final CacheManager _instance = CacheManager._init();
  static CacheManager get I => _instance;

  final _CacheManagerTheme theme = _CacheManagerTheme.I;
  final _CacheManagerThemeMode themeMode = _CacheManagerThemeMode.I;
  final _CacheManagerNasaLibraryFavorites nasaLibraryFavorites =
      _CacheManagerNasaLibraryFavorites.I;
  final _CacheManagerUserSettings userSettings = _CacheManagerUserSettings.I;

  Future<void> init() async {
    await Hive.initFlutter();
    await theme.initial();
    await themeMode.initial();
    await nasaLibraryFavorites.initial();
    await userSettings.initial();
  }

  Future<void> clear() async {
    await Hive.deleteFromDisk();
  }
}
