part of 'cache_manager.dart';

final class _CacheManagerThemeMode {
  _CacheManagerThemeMode._init();
  static final _CacheManagerThemeMode _instance =
      _CacheManagerThemeMode._init();
  static _CacheManagerThemeMode get I => _instance;

  static const _boxName = 'theme_mode';

  late final Box<int> _box;

  Future<void> initial() async {
    _box = await Hive.openBox<int>(_boxName);
  }

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    await _box.put(AppCacheKeys.themeMode.key, themeMode.index);
  }

  ThemeMode getThemeMode() {
    final themeModeIndex = _box.get(AppCacheKeys.themeMode.key);
    return themeModeIndex != null
        ? ThemeMode.values[themeModeIndex]
        : ThemeMode.system;
  }
}
