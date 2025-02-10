import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';

class NasaApodEntity extends NasaApodModel {
  const NasaApodEntity({
    super.date,
    super.explanation,
    super.hdurl,
    super.mediaType,
    super.serviceVersion,
    super.title,
    super.url,
  });

  factory NasaApodEntity.fromJson(Map<String, dynamic> json) {
    return NasaApodEntity(
      date: json[dateKey] as String?,
      explanation: json[explanationKey] as String?,
      hdurl: json[hdurlKey] as String?,
      mediaType: json[mediaTypeKey] as String?,
      serviceVersion: json[serviceVersionKey] as String?,
      title: json[titleKey] as String?,
      url: json[urlKey] as String?,
    );
  }

  static const dateKey = 'date';
  static const explanationKey = 'explanation';
  static const hdurlKey = 'hdurl';
  static const mediaTypeKey = 'media_type';
  static const serviceVersionKey = 'service_version';
  static const titleKey = 'title';
  static const urlKey = 'url';
}

List<NasaApodEntity> dummyNasaApodEntities = List.generate(
  10,
  (index) {
    final date = DateTime.now().toUtc().subtract(Duration(days: index));
    return NasaApodEntity.fromJson({
      NasaApodEntity.dateKey: '${date.year}-${date.month}-${date.day}',
      NasaApodEntity.explanationKey: 'This is a dummy explanation $index',
      NasaApodEntity.hdurlKey: 'https://picsum.photos/1280/720?random=$index',
      NasaApodEntity.mediaTypeKey: 'image',
      NasaApodEntity.serviceVersionKey: 'v1',
      NasaApodEntity.titleKey: 'Dummy Title $index',
      NasaApodEntity.urlKey: 'https://picsum.photos/640/360?random=$index',
    });
  },
  growable: false,
);
