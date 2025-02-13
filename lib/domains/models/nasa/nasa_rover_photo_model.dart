import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_camera_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_model.dart';

class NasaRoverPhotoModel {
  const NasaRoverPhotoModel({
    this.id,
    this.sol,
    this.camera,
    this.imgSrc,
    this.earthDate,
    this.rover,
  });

  final int? id;
  final int? sol;
  final NasaRoverCameraModel? camera;
  final String? imgSrc;
  final String? earthDate;
  final NasaRoverModel? rover;

  static const photosKey = 'photos';
  static const idKey = 'id';
  static const solKey = 'sol';
  static const cameraKey = 'camera';
  static const imgSrcKey = 'img_src';
  static const earthDateKey = 'earth_date';
  static const roverKey = 'rover';
}

final List<NasaRoverPhotoModel> dummyNasaRoverPhotoModels = List.generate(
  5,
  (index) => NasaRoverPhotoModel(
    id: index,
    sol: index,
    camera: NasaRoverCameraModel(
      id: index,
      name: 'Front Hazard Avoidance Camera',
      fullName: 'Front Hazard Avoidance Camera',
    ),
    imgSrc: 'https://picsum.photos/200/300?random=$index',
    earthDate: '2021-08-01',
    rover: NasaRoverModel(
      id: index,
      name: 'Curiosity',
      landingDate: '2012-08-06',
      launchDate: '2011-11-26',
      status: 'active',
    ),
  ),
);
