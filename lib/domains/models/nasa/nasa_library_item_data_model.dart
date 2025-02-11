class NasaLibraryItemDataModel {
  const NasaLibraryItemDataModel({
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

  final String? center;
  final DateTime? dateCreated;
  final String? description;
  final List<String>? keywords;
  final String? location;
  final String? mediaType;
  final String? nasaId;
  final String? photographer;
  final String? title;
}
