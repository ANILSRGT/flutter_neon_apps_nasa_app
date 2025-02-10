import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_camera_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';

class NasaRoverPhotoEntity extends NasaRoverPhotoModel {
  const NasaRoverPhotoEntity({
    super.id,
    super.sol,
    super.camera,
    super.imgSrc,
    super.earthDate,
    super.rover,
  });

  factory NasaRoverPhotoEntity._fromJson(Map<String, dynamic> json) {
    return NasaRoverPhotoEntity(
      id: json[idKey] as int?,
      sol: json[solKey] as int?,
      camera: json[cameraKey] != null
          ? NasaRoverCameraEntity.fromJson(
              json[cameraKey] as Map<String, dynamic>,
            )
          : null,
      imgSrc: json[imgSrcKey] as String?,
      earthDate: json[earthDateKey] as String?,
      rover: json[roverKey] != null
          ? NasaRoverEntity.fromJson(json[roverKey] as Map<String, dynamic>)
          : null,
    );
  }

  static List<NasaRoverPhotoEntity> listFromJson(Map<String, dynamic> json) {
    final photos = json[photosKey] as List?;
    if (photos == null) return [];
    return photos
        .map(
          (photo) =>
              NasaRoverPhotoEntity._fromJson(photo as Map<String, dynamic>),
        )
        .toList();
  }

  static const photosKey = 'photos';
  static const idKey = 'id';
  static const solKey = 'sol';
  static const cameraKey = 'camera';
  static const imgSrcKey = 'img_src';
  static const earthDateKey = 'earth_date';
  static const roverKey = 'rover';
}
