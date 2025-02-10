import 'package:neon_apps_nasa_app/domains/enums/nasa_rover_camera_types.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_rover_types.dart';

class NasaRoverPhotosGetParams {
  NasaRoverPhotosGetParams({
    required this.earthDate,
    required this.roverType,
    required this.cameraType,
  });

  final DateTime earthDate;
  final NasaRoverTypes roverType;
  final NasaRoverCameraTypes? cameraType;
}
