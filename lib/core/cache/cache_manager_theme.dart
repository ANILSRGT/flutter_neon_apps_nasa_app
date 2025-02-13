part of 'cache_manager.dart';

final class _CacheManagerTheme {
  const _CacheManagerTheme(this._box);

  final Box<dynamic> _box;

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    await _box.put('themeMode', themeMode.index);
  }

  ThemeMode getThemeMode() {
    final themeModeIndex = _box.get('themeMode') as int?;
    return themeModeIndex != null
        ? ThemeMode.values[themeModeIndex]
        : ThemeMode.system;
  }

  Future<void> saveTheme(AppThemesEnum theme) async {
    await _box.put('theme', theme.index);
  }

  AppThemesEnum getTheme() {
    final themeIndex = _box.get('theme') as int?;
    return themeIndex != null
        ? AppThemesEnum.values[themeIndex]
        : AppThemesEnum.main;
  }
}
