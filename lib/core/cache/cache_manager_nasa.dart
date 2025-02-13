part of 'cache_manager.dart';

final class _CacheManagerNasa {
  const _CacheManagerNasa(this._box);

  final Box<dynamic> _box;

  void registerAdapters() {
    Hive
      ..registerAdapter(NasaLibraryItemModelAdapter())
      ..registerAdapter(NasaLibraryItemDataModelAdapter());
  }

  Future<void> toggleFavoriteLibrary(NasaLibraryItemModel library) async {
    final favoriteLibrary = getFavoriteLibrary();
    if (favoriteLibrary
        .where((e) => e.data?.nasaId != null)
        .any((e) => e.data!.nasaId == library.data?.nasaId)) {
      favoriteLibrary.add(library);
    } else {
      favoriteLibrary.removeWhere(
        (e) => e.data?.nasaId != null && e.data!.nasaId == library.data?.nasaId,
      );
    }

    await _box.put(AppCacheKeys.favoriteNasaLibrary.key, favoriteLibrary);
  }

  List<NasaLibraryItemModel> getFavoriteLibrary() {
    return _box.get(
          AppCacheKeys.favoriteNasaLibrary,
          defaultValue: <NasaLibraryItemModel>[],
        )
        as List<NasaLibraryItemModel>;
  }
}
