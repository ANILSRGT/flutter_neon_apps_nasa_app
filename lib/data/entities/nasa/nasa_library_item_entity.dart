import 'dart:async';

import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_data_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

class NasaLibraryItemEntity extends NasaLibraryItemModel {
  NasaLibraryItemEntity({
    this.dataEntity,
    super.libraryCollection,
    super.thumbnailUrl,
  }) : super(data: dataEntity);

  factory NasaLibraryItemEntity.fromModel({
    required NasaLibraryItemModel? model,
  }) {
    return NasaLibraryItemEntity(
      dataEntity: NasaLibraryItemDataEntity.fromModel(model: model?.data),
      libraryCollection: model?.libraryCollection,
      thumbnailUrl: model?.thumbnailUrl,
    );
  }

  factory NasaLibraryItemEntity._fromJson({
    required Map<String, dynamic> json,
    required List<String>? libraryCollection,
  }) {
    final links = json[NasaLibraryItemModel.linksKey] as List?;
    String? thumbnailUrl;
    if (links != null && links.isNotEmpty) {
      final previewLink =
          links.firstWhere(
                (e) =>
                    e != null &&
                    e is Map &&
                    e[NasaLibraryItemModel.linksRelKey] ==
                        NasaLibraryItemModel.linksRelPreviewValue,
                orElse: () => <String, dynamic>{},
              )
              as Map<String, dynamic>;
      thumbnailUrl = previewLink[NasaLibraryItemModel.linksHrefKey] as String?;
    }
    final dataList = json[NasaLibraryItemModel.dataKey] as List?;
    final data =
        dataList != null && dataList.isNotEmpty
            ? NasaLibraryItemDataEntity.fromJson(
              dataList.first as Map<String, dynamic>,
            )
            : null;
    return NasaLibraryItemEntity(
      dataEntity: data,
      libraryCollection: libraryCollection,
      thumbnailUrl: thumbnailUrl,
    );
  }

  final NasaLibraryItemDataEntity? dataEntity;

  static Future<List<NasaLibraryItemEntity>> fromJsonList({
    required List<dynamic> jsonList,
    required Future<List<String>?> Function(String href)
    libraryCollectionCallback,
  }) async {
    final result = <NasaLibraryItemEntity>[];
    for (final json in jsonList.cast<Map<String, dynamic>>()) {
      try {
        final libraryCollection = await libraryCollectionCallback(
          json[NasaLibraryItemModel.libraryCollectionJsonKey] as String,
        );

        result.add(
          NasaLibraryItemEntity._fromJson(
            json: json,
            libraryCollection: libraryCollection,
          ),
        );
      } on Exception catch (_) {
        continue;
      }
    }
    return result;
  }
}
