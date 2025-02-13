import 'package:hive_flutter/hive_flutter.dart';

part 'nasa_library_item_data_model.g.dart';

@HiveType(typeId: 1)
class NasaLibraryItemDataModel extends HiveObject {
  NasaLibraryItemDataModel({
    this.center,
    this.dateCreated,
    this.description,
    this.keywords,
    this.location,
    this.mediaType,
    this.nasaId,
    this.photographer,
    this.title,
  });

  @HiveField(0)
  final String? center;
  @HiveField(1)
  final DateTime? dateCreated;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final List<String>? keywords;
  @HiveField(4)
  final String? location;
  @HiveField(5)
  final String? mediaType;
  @HiveField(6)
  final String? nasaId;
  @HiveField(7)
  final String? photographer;
  @HiveField(8)
  final String? title;

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
