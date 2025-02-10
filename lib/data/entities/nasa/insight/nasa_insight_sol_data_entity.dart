import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_at_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_hws_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_pre_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_wd_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_sol_data_model.dart';

class NasaInsightSolDataEntity extends NasaInsightSolDataModel {
  const NasaInsightSolDataEntity({
    super.atmosphericTemperature,
    super.horizontalWindSpeed,
    super.pressure,
    super.windDirectionDegrees,
    super.firstUTC,
    super.lastUTC,
    super.season,
  });

  factory NasaInsightSolDataEntity.fromJson(Map<String, dynamic> json) {
    return NasaInsightSolDataEntity(
      atmosphericTemperature: json[atmosphericTemperatureKey] != null
          ? NasaInsightATEntity.fromJson(
              json[atmosphericTemperatureKey] as Map<String, dynamic>,
            )
          : null,
      horizontalWindSpeed: json[horizontalWindSpeedKey] != null
          ? NasaInsightHWSEntity.fromJson(
              json[horizontalWindSpeedKey] as Map<String, dynamic>,
            )
          : null,
      pressure: json[pressureKey] != null
          ? NasaInsightPREEntity.fromJson(
              json[pressureKey] as Map<String, dynamic>,
            )
          : null,
      windDirectionDegrees: json[windDirectionDegreesKey] != null
          ? NasaInsightWDEntity.fromJson(
              json[windDirectionDegreesKey] as Map<String, dynamic>,
            )
          : null,
      firstUTC: json[firstUTCKey] != null
          ? DateTime.parse(json[firstUTCKey] as String)
          : null,
      lastUTC: json[lastUTCKey] != null
          ? DateTime.parse(json[lastUTCKey] as String)
          : null,
      season: json[seasonKey] as String,
    );
  }

  static const atmosphericTemperatureKey = 'AT';
  static const horizontalWindSpeedKey = 'HWS';
  static const pressureKey = 'PRE';
  static const windDirectionDegreesKey = 'WD';
  static const firstUTCKey = 'First_UTC';
  static const lastUTCKey = 'Last_UTC';
  static const seasonKey = 'Season';
}
