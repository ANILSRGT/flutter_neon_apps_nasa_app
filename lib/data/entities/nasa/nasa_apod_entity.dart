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
      date: json[NasaApodModel.dateKey] as String?,
      explanation: json[NasaApodModel.explanationKey] as String?,
      hdurl: json[NasaApodModel.hdurlKey] as String?,
      mediaType: json[NasaApodModel.mediaTypeKey] as String?,
      serviceVersion: json[NasaApodModel.serviceVersionKey] as String?,
      title: json[NasaApodModel.titleKey] as String?,
      url: json[NasaApodModel.urlKey] as String?,
    );
  }
}

List<NasaApodEntity> dummyNasaApodEntities = List.generate(5, (index) {
  final date = DateTime.now().toUtc().subtract(Duration(days: index));
  return NasaApodEntity.fromJson({
    NasaApodModel.dateKey: '${date.year}-${date.month}-${date.day}',
    NasaApodModel.explanationKey: 'This is a dummy explanation $index',
    NasaApodModel.hdurlKey: 'https://picsum.photos/1280/720?random=$index',
    NasaApodModel.mediaTypeKey: 'image',
    NasaApodModel.serviceVersionKey: 'v1',
    NasaApodModel.titleKey: 'Dummy Title $index',
    NasaApodModel.urlKey: 'https://picsum.photos/640/360?random=$index',
  });
});
