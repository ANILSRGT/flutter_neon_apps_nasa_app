import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_at_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_hws_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_pre_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_wd_model.dart';

class NasaInsightSolDataModel {
  const NasaInsightSolDataModel({
    this.atmosphericTemperature,
    this.horizontalWindSpeed,
    this.pressure,
    this.windDirectionDegrees,
    this.firstUTC,
    this.lastUTC,
    this.season,
  });

  final NasaInsightATModel? atmosphericTemperature;
  final NasaInsightHWSModel? horizontalWindSpeed;
  final NasaInsightPREModel? pressure;
  final NasaInsightWDModel? windDirectionDegrees;
  final DateTime? firstUTC;
  final DateTime? lastUTC;

  /// (winter, summer, spring, fall)
  final String? season;
}
