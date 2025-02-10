import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_at_model.dart';

class NasaInsightATEntity extends NasaInsightATModel {
  const NasaInsightATEntity({
    super.average,
    super.count,
    super.min,
    super.max,
  });

  factory NasaInsightATEntity.fromJson(Map<String, dynamic> json) {
    return NasaInsightATEntity(
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
