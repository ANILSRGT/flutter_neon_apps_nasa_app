import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_sol_data_model.dart';

class NasaInsightModel {
  const NasaInsightModel({
    this.solKeys,
    this.sols,
  });

  final List<int>? solKeys;
  final Map<int, NasaInsightSolDataModel>? sols;
}
