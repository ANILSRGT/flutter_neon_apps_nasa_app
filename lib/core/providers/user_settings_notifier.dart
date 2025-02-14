import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/cache/cache_manager.dart';
import 'package:neon_apps_nasa_app/core/models/user/user_settings_model.dart';

final class UserSettingsNotifier extends ChangeNotifier {
  UserSettingsModel _userSettings = const UserSettingsModel();

  UserSettingsModel get userSettings => _userSettings;

  void loadUserSettings() {
    _userSettings = CacheManager.I.userSettings.get();
    notifyListeners();
  }

  Future<void> setUserSettings(UserSettingsModel userSettings) async {
    _userSettings = userSettings;
    await CacheManager.I.userSettings.save(userSettings);
    loadUserSettings();
  }
}
