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
      id: json[idKey] as int?,
      name: json[nameKey] as String?,
      landingDate: json[landingDateKey] as String?,
      launchDate: json[launchDateKey] as String?,
      status: json[statusKey] as String?,
    );
  }

  static const idKey = 'id';
  static const nameKey = 'name';
  static const landingDateKey = 'landing_date';
  static const launchDateKey = 'launch_date';
  static const statusKey = 'status';
}
