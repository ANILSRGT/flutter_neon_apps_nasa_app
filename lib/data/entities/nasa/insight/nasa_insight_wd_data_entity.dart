import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_wd_data_model.dart';

class NasaInsightWDDataEntity extends NasaInsightWDDataModel {
  const NasaInsightWDDataEntity({
    super.compassDegrees,
    super.compassPoint,
    super.compassRight,
    super.compassUp,
    super.count,
  });

  factory NasaInsightWDDataEntity.fromJson(Map<String, dynamic> json) {
    return NasaInsightWDDataEntity(
      compassDegrees: json[compassDegressKey] as double?,
      compassPoint: json[compassPointKey] as String?,
      compassRight: json[compassRightKey] as double?,
      compassUp: json[compassUpKey] as double?,
      count: json[countKey] as int?,
    );
  }

  static const compassDegressKey = 'compass_degrees';
  static const compassPointKey = 'compass_point';
  static const compassRightKey = 'compass_right';
  static const compassUpKey = 'compass_up';
  static const countKey = 'ct';
}
