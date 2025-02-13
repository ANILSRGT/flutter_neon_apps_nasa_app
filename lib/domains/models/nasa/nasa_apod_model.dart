class NasaApodModel {
  const NasaApodModel({
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  final String? date;
  final String? explanation;
  final String? hdurl;
  final String? mediaType;
  final String? serviceVersion;
  final String? title;
  final String? url;

  static const dateKey = 'date';
  static const explanationKey = 'explanation';
  static const hdurlKey = 'hdurl';
  static const mediaTypeKey = 'media_type';
  static const serviceVersionKey = 'service_version';
  static const titleKey = 'title';
  static const urlKey = 'url';
}
