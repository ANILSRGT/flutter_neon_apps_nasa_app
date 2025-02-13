import 'dart:async';

import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_data_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

class NasaLibraryItemEntity extends NasaLibraryItemModel {
  const NasaLibraryItemEntity({
    super.data,
    super.libraryCollection,
    super.thumbnailUrl,
  });

  factory NasaLibraryItemEntity._fromJson({
    required Map<String, dynamic> json,
    required List<String>? libraryCollection,
  }) {
    final links = json[linksKey] as List?;
    String? thumbnailUrl;
    if (links != null && links.isNotEmpty) {
      final previewLink =
          links.firstWhere(
                (e) =>
                    e != null &&
                    e is Map &&
                    e[linksRelKey] == linksRelPreviewValue,
                orElse: () => <String, dynamic>{},
              )
              as Map<String, dynamic>;
      thumbnailUrl = previewLink[linksHrefKey] as String?;
    }
    return NasaLibraryItemEntity(
      data:
          json[dataKey] != null
              ? NasaLibraryItemDataEntity.fromJsonList(json[dataKey] as List)
              : null,
      libraryCollection: libraryCollection,
      thumbnailUrl: thumbnailUrl,
    );
  }

  static Future<List<NasaLibraryItemEntity>> fromJsonList({
    required List<dynamic> jsonList,
    required Future<List<String>?> Function(String href)
    libraryCollectionCallback,
  }) async {
    final result = <NasaLibraryItemEntity>[];
    for (final json in jsonList.cast<Map<String, dynamic>>()) {
      final libraryCollection = await libraryCollectionCallback(
        json[libraryCollectionJsonKey] as String,
      );
      result.add(
        NasaLibraryItemEntity._fromJson(
          json: json,
          libraryCollection: libraryCollection,
        ),
      );
    }
    return result;
  }

  static const dataKey = 'data';
  static const collectionKey = 'collection';
  static const itemsKey = 'items';
  static const libraryCollectionJsonKey = 'href';
  static const linksKey = 'links';
  static const linksRelKey = 'rel';
  static const linksRelPreviewValue = 'preview';
  static const linksHrefKey = 'href';
}
