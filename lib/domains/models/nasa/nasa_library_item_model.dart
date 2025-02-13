import 'package:neon_apps_nasa_app/core/extensions/where_iterable_extension.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_library_media_types.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';

class NasaLibraryItemModel {
  const NasaLibraryItemModel({
    this.data,
    this.libraryCollection,
    this.thumbnailUrl,
  });

  final List<NasaLibraryItemDataModel>? data;
  final List<String>? libraryCollection;
  final String? thumbnailUrl;

  NasaLibraryMediaTypes? get mediaType => NasaLibraryMediaTypes.values.extWhere
      .firstWhereOrNull((element) => element.value == data?.first.mediaType);
}
