import 'package:neon_apps_nasa_app/domains/enums/nasa_rover_types.dart';

class NasaRoverPhotosGetParams {
  NasaRoverPhotosGetParams({
    required this.earthDate,
    required this.roverType,
  });

  final DateTime earthDate;
  final NasaRoverTypes roverType;
}
