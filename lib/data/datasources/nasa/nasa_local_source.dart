import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_entity.dart';

abstract class NasaLocalSource {
  List<NasaLibraryItemEntity> getNasaFavoriteLibrary();
  Future<void> toggleNasaFavoriteLibrary(
    NasaLibraryItemEntity nasaLibraryItemEntity,
  );
}
