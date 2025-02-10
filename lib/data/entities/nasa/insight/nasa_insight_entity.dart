import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_sol_data_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_model.dart';

class NasaInsightEntity extends NasaInsightModel {
  NasaInsightEntity({
    super.solKeys,
    super.sols,
  });

  factory NasaInsightEntity.fromJson(Map<String, dynamic> json) {
    final solIndexes =
        json.keys.where((e) => int.tryParse(e) != null && json[e] != null);
    final sols = solIndexes.map((e) {
      final solData = json[e] as Map<String, dynamic>;
      return MapEntry(
        int.parse(e),
        NasaInsightSolDataEntity.fromJson(solData),
      );
    }).toList();
    return NasaInsightEntity(
      solKeys: (json[solKeysKey] as List<String>?)
          ?.where((e) => int.tryParse(e) != null)
          .map(int.parse)
          .toList(),
      sols: Map<int, NasaInsightSolDataEntity>.fromEntries(sols),
    );
  }

  static const solKeysKey = 'sol_keys';
}
