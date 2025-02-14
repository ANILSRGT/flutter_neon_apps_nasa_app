part of 'cache_manager.dart';

final class _CacheManagerUserSettings {
  _CacheManagerUserSettings._init();
  static final _CacheManagerUserSettings _instance =
      _CacheManagerUserSettings._init();
  static _CacheManagerUserSettings get I => _instance;

  static const _boxName = 'user_settings';

  late final Box<UserSettingsModel> _box;

  Future<void> initial() async {
    Hive.registerAdapter(UserSettingsModelAdapter());
    _box = await Hive.openBox(_boxName);
  }

  Future<void> save(UserSettingsModel userSettings) async {
    await _box.put('user_settings', userSettings);
  }

  UserSettingsModel get() {
    return _box.get('user_settings', defaultValue: const UserSettingsModel()) ??
        const UserSettingsModel();
  }
}
