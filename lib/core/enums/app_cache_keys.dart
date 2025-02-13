enum AppCacheKeys {
  theme(key: 'theme'),
  themeMode(key: 'themeMode'),
  favoriteNasaLibrary(key: 'favoriteNasaLibrary');

  const AppCacheKeys({required this.key});

  final String key;
}
