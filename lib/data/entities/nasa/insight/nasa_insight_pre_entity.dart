import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_pre_model.dart';

class NasaInsightPREEntity extends NasaInsightPREModel {
  const NasaInsightPREEntity({
    super.average,
    super.count,
    super.min,
    super.max,
  });

  factory NasaInsightPREEntity.fromJson(Map<String, dynamic> json) {
    return NasaInsightPREEntity(
      average: json[averageKey] as double,
      count: json[countKey] as int,
      min: json[minKey] as double,
      max: json[maxKey] as double,
    );
  }

  static const averageKey = 'average';
  static const countKey = 'count';
  static const minKey = 'min';
  static const maxKey = 'max';
}
