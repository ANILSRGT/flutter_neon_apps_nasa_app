import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';

class NasaLibraryItemDataEntity extends NasaLibraryItemDataModel {
  NasaLibraryItemDataEntity({
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

  factory NasaLibraryItemDataEntity.fromModel({
    required NasaLibraryItemDataModel? model,
  }) {
    return NasaLibraryItemDataEntity(
      center: model?.center,
      dateCreated: model?.dateCreated,
      description: model?.description,
      keywords: model?.keywords,
      location: model?.location,
      mediaType: model?.mediaType,
      nasaId: model?.nasaId,
      photographer: model?.photographer,
      title: model?.title,
    );
  }

  factory NasaLibraryItemDataEntity.fromJson(Map<String, dynamic> json) {
    return NasaLibraryItemDataEntity(
      center: json[NasaLibraryItemDataModel.centerKey] as String?,
      dateCreated:
          json[NasaLibraryItemDataModel.dateCreatedKey] != null
              ? DateTime.parse(
                json[NasaLibraryItemDataModel.dateCreatedKey] as String,
              ).toLocal()
              : null,
      description: json[NasaLibraryItemDataModel.descriptionKey] as String?,
      keywords:
          (json[NasaLibraryItemDataModel.keywordsKey] as List?)
              ?.map((e) => e as String)
              .toList(),
      location: json[NasaLibraryItemDataModel.locationKey] as String?,
      mediaType: json[NasaLibraryItemDataModel.mediaTypeKey] as String?,
      nasaId: json[NasaLibraryItemDataModel.nasaIdKey] as String?,
      photographer: json[NasaLibraryItemDataModel.photographerKey] as String?,
      title: json[NasaLibraryItemDataModel.titleKey] as String?,
    );
  }
}
