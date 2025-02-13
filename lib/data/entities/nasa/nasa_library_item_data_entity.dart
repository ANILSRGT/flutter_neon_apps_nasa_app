import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';

class NasaLibraryItemDataEntity extends NasaLibraryItemDataModel {
  const NasaLibraryItemDataEntity({
    super.center,
    super.dateCreated,
    super.description,
    super.keywords,
    super.location,
    super.mediaType,
    super.nasaId,
    super.photographer,
    super.title,
  });

  factory NasaLibraryItemDataEntity._fromJson(Map<String, dynamic> json) {
    return NasaLibraryItemDataEntity(
      center: json[centerKey] as String?,
      dateCreated: json[dateCreatedKey] != null
          ? DateTime.parse(json[dateCreatedKey] as String).toLocal()
          : null,
      description: json[descriptionKey] as String?,
      keywords: (json[keywordsKey] as List?)?.map((e) => e as String).toList(),
      location: json[locationKey] as String?,
      mediaType: json[mediaTypeKey] as String?,
      nasaId: json[nasaIdKey] as String?,
      photographer: json[photographerKey] as String?,
      title: json[titleKey] as String?,
    );
  }

  static List<NasaLibraryItemDataEntity> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map(
          (json) =>
              NasaLibraryItemDataEntity._fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  static const centerKey = 'center';
  static const dateCreatedKey = 'date_created';
  static const descriptionKey = 'description';
  static const keywordsKey = 'keywords';
  static const locationKey = 'location';
  static const mediaTypeKey = 'media_type';
  static const nasaIdKey = 'nasa_id';
  static const photographerKey = 'photographer';
  static const titleKey = 'title';
}
