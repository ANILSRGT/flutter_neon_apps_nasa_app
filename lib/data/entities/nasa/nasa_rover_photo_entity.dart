import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_camera_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_entity.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';

class NasaRoverPhotoEntity extends NasaRoverPhotoModel {
  const NasaRoverPhotoEntity({
    super.id,
    super.sol,
    this.cameraEntity,
    super.imgSrc,
    super.earthDate,
    this.roverEntity,
  }) : super(rover: roverEntity, camera: cameraEntity);

  factory NasaRoverPhotoEntity._fromJson(Map<String, dynamic> json) {
    return NasaRoverPhotoEntity(
      id: json[NasaRoverPhotoModel.idKey] as int?,
      sol: json[NasaRoverPhotoModel.solKey] as int?,
      cameraEntity:
          json[NasaRoverPhotoModel.cameraKey] != null
              ? NasaRoverCameraEntity.fromJson(
                json[NasaRoverPhotoModel.cameraKey] as Map<String, dynamic>,
              )
              : null,
      imgSrc: json[NasaRoverPhotoModel.imgSrcKey] as String?,
      earthDate: json[NasaRoverPhotoModel.earthDateKey] as String?,
      roverEntity:
          json[NasaRoverPhotoModel.roverKey] != null
              ? NasaRoverEntity.fromJson(
                json[NasaRoverPhotoModel.roverKey] as Map<String, dynamic>,
              )
              : null,
    );
  }

  final NasaRoverEntity? roverEntity;
  final NasaRoverCameraEntity? cameraEntity;

  static List<NasaRoverPhotoEntity> listFromJson(Map<String, dynamic> json) {
    final photos = json[NasaRoverPhotoModel.photosKey] as List?;
    if (photos == null) return [];
    return photos
        .map(
          (photo) =>
              NasaRoverPhotoEntity._fromJson(photo as Map<String, dynamic>),
        )
        .toList();
  }
}
