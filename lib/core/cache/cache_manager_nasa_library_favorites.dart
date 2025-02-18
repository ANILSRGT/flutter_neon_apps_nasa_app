part of 'cache_manager.dart';

final class _CacheManagerNasaLibraryFavorites {
  _CacheManagerNasaLibraryFavorites._init();
  static final _CacheManagerNasaLibraryFavorites _instance =
      _CacheManagerNasaLibraryFavorites._init();
  static _CacheManagerNasaLibraryFavorites get I => _instance;

  static const _boxName = 'nasa_library_favorites';

  late final Box<NasaLibraryItemModel> _box;

  Future<void> initial() async {
    Hive
      ..registerAdapter(NasaLibraryItemModelAdapter())
      ..registerAdapter(NasaLibraryItemDataModelAdapter());
    _box = await Hive.openBox<NasaLibraryItemModel>(_boxName);
  }

  Future<void> toggleFavoriteLibrary(NasaLibraryItemModel library) async {
    final nasaId = library.data?.nasaId;
    if (nasaId == null) return;
    if (_box.containsKey(nasaId)) {
      await _box.delete(nasaId);
    } else {
      await _box.put(nasaId, library);
    }
  }

  List<NasaLibraryItemModel> getFavoriteLibrary() {
    return _box.values.toList();
  }
}
