part of 'cache_manager.dart';

final class _CacheManagerTheme {
  _CacheManagerTheme._init();
  static final _CacheManagerTheme _instance = _CacheManagerTheme._init();
  static _CacheManagerTheme get I => _instance;

  static const _boxName = 'theme';

  late final Box<int> _box;

  Future<void> initial() async {
    _box = await Hive.openBox<int>(_boxName);
  }

  Future<void> saveTheme(AppThemesEnum theme) async {
    await _box.put(AppCacheKeys.theme.key, theme.index);
  }

  AppThemesEnum getTheme() {
    final themeIndex = _box.get(AppCacheKeys.theme.key);
    return themeIndex != null
        ? AppThemesEnum.values[themeIndex]
        : AppThemesEnum.main;
  }
}
