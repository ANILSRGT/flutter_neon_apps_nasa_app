import 'package:neon_apps_nasa_app/data/entities/nasa/insight/nasa_insight_wd_data_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/insight/nasa_insight_wd_model.dart';

class NasaInsightWDEntity extends NasaInsightWDModel {
  const NasaInsightWDEntity({
    super.mostCommon,
    super.directions,
  });

  factory NasaInsightWDEntity.fromJson(Map<String, dynamic> json) {
    final dirJsons = json.keys
        .where((key) => key != mostCommonKey && int.tryParse(key) != null)
        .map(
          (key) => MapEntry(
            int.parse(key),
            NasaInsightWDDataEntity.fromJson(
              json[key] as Map<String, dynamic>,
            ),
          ),
        )
        .toList();
    return NasaInsightWDEntity(
      mostCommon: json[mostCommonKey] != null
          ? NasaInsightWDDataEntity.fromJson(
              json[mostCommonKey] as Map<String, dynamic>,
            )
          : null,
      directions: dirJsons.isNotEmpty
          ? Map.fromEntries(dirJsons)
          : const <int, NasaInsightWDDataEntity>{},
    );
  }

  static const mostCommonKey = 'most_common';
}
