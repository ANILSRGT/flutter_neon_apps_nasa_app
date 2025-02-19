import 'package:hive_flutter/hive_flutter.dart';
import 'package:neon_apps_nasa_app/core/extensions/where_iterable_extension.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_media_types.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';

part 'nasa_library_item_model.g.dart';

@HiveType(typeId: 0)
class NasaLibraryItemModel extends HiveObject {
  NasaLibraryItemModel({this.data, this.libraryCollection, this.thumbnailUrl});

  @HiveField(0)
  final NasaLibraryItemDataModel? data;
  @HiveField(1)
  final List<String>? libraryCollection;
  @HiveField(2)
  final String? thumbnailUrl;

  NasaMediaTypes? get mediaType => NasaMediaTypes.values.extWhere
      .firstWhereOrNull((element) => element.value == data?.mediaType);

  String get mediaUrl {
    return switch (mediaType) {
      NasaMediaTypes.video => libraryCollection!.firstWhere(
        (e) => e.endsWith('small.mp4') || e.contains('youtube.com'),
      ),
      NasaMediaTypes.image => libraryCollection!.firstWhere(
        (e) => e.endsWith('small.jpg'),
      ),
      _ => '',
    };
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
