import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_data_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

class NasaLibraryItemEntity extends NasaLibraryItemModel {
  const NasaLibraryItemEntity({
    super.data,
    super.libraryCollectionJson,
  });

  factory NasaLibraryItemEntity._fromJson(Map<String, dynamic> json) {
    return NasaLibraryItemEntity(
      data: json[dataKey] != null
          ? NasaLibraryItemDataEntity.fromJsonList(json[dataKey] as List)
          : null,
      libraryCollectionJson: json[libraryCollectionJsonKey] as String?,
    );
  }

  static List<NasaLibraryItemEntity> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map(
          (json) =>
              NasaLibraryItemEntity._fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  static const dataKey = 'data';
  static const libraryCollectionJsonKey = 'href';
}
