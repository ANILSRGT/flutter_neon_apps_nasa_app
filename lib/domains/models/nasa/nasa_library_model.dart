import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

class NasaLibraryModel {
  const NasaLibraryModel({
    this.items,
    this.totalHits,
  });

  final List<NasaLibraryItemModel>? items;
  final int? totalHits;
}
