part of 'cache_manager.dart';

final class _CacheManagerNasaLibrary {
  _CacheManagerNasaLibrary._init();
  static final _CacheManagerNasaLibrary _instance =
      _CacheManagerNasaLibrary._init();
  static _CacheManagerNasaLibrary get I => _instance;

  static const _boxName = 'nasa_library';

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
