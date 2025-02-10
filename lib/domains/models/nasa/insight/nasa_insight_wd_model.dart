import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_wd_data_model.dart';

class NasaInsightWDModel {
  const NasaInsightWDModel({
    this.mostCommon,
    this.directions,
  });

  final NasaInsightWDDataModel? mostCommon;

  /// key range (1-16)
  final Map<int, NasaInsightWDDataModel>? directions;
}
