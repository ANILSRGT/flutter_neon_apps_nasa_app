import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_camera_model.dart';

class NasaRoverCameraEntity extends NasaRoverCameraModel {
  const NasaRoverCameraEntity({
    super.id,
    super.name,
    super.roverId,
    super.fullName,
  });

  factory NasaRoverCameraEntity.fromJson(Map<String, dynamic> json) {
    return NasaRoverCameraEntity(
      id: json[idKey] as int?,
      name: json[nameKey] as String?,
      roverId: json[roverIdKey] as int?,
      fullName: json[fullNameKey] as String?,
    );
  }

  static const idKey = 'id';
  static const nameKey = 'name';
  static const roverIdKey = 'rover_id';
  static const fullNameKey = 'full_name';
}
