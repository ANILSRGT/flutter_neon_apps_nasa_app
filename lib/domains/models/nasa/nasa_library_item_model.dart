import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';

class NasaLibraryItemModel {
  const NasaLibraryItemModel({
    this.data,
    this.libraryCollectionJson,
  });

  final List<NasaLibraryItemDataModel>? data;
  final String? libraryCollectionJson;
}
