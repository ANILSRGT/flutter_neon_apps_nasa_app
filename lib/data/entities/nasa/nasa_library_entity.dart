import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_model.dart';

class NasaLibraryEntity extends NasaLibraryModel {
  const NasaLibraryEntity({
    super.items,
    super.totalHits,
  });

  factory NasaLibraryEntity.fromJson(Map<String, dynamic> json) {
    if (json[collectionKey] == null) return const NasaLibraryEntity();
    final collectionJson = json[collectionKey] as Map<String, dynamic>;
    return NasaLibraryEntity(
      items: collectionJson[itemsKey] != null
          ? NasaLibraryItemEntity.fromJsonList(collectionJson[itemsKey] as List)
          : null,
      totalHits: (collectionJson[metadataKey]
          as Map<String, dynamic>?)?[metadataKey] as int?,
    );
  }

  static const collectionKey = 'collection';
  static const itemsKey = 'items';
  static const metadataKey = 'metadata';
  static const totalHitsKey = 'total_hits';
}
