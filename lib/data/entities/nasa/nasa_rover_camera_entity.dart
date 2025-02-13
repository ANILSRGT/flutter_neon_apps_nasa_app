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
      id: json[NasaRoverCameraModel.idKey] as int?,
      name: json[NasaRoverCameraModel.nameKey] as String?,
      roverId: json[NasaRoverCameraModel.roverIdKey] as int?,
      fullName: json[NasaRoverCameraModel.fullNameKey] as String?,
    );
  }
}
