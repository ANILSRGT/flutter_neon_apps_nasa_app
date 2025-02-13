import 'package:neon_apps_nasa_app/core/cache/cache_manager.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_local_source.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_entity.dart';

class NasaLocalSourceImpl extends NasaLocalSource {
  @override
  List<NasaLibraryItemEntity> getNasaFavoriteLibrary() {
    return CacheManager.I.nasa
        .getFavoriteLibrary()
        .map((e) => NasaLibraryItemEntity.fromModel(model: e))
        .toList();
  }

  @override
  Future<void> toggleNasaFavoriteLibrary(NasaLibraryItemEntity entity) async {
    await CacheManager.I.nasa.toggleFavoriteLibrary(entity);
  }
}
