import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_model.dart';

class NasaRoverEntity extends NasaRoverModel {
  const NasaRoverEntity({
    super.id,
    super.name,
    super.landingDate,
    super.launchDate,
    super.status,
  });

  factory NasaRoverEntity.fromJson(Map<String, dynamic> json) {
    return NasaRoverEntity(
      id: json[NasaRoverModel.idKey] as int?,
      name: json[NasaRoverModel.nameKey] as String?,
      landingDate: json[NasaRoverModel.landingDateKey] as String?,
      launchDate: json[NasaRoverModel.launchDateKey] as String?,
      status: json[NasaRoverModel.statusKey] as String?,
    );
  }
}
