import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_apod_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_photo_entity.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/rover_photos/nasa_rover_photos_get_params.dart';

abstract class NasaRemoteSource {
  Future<ResponseModel<NasaApodEntity>> getNasaApod();
  Future<ResponseModel<NasaApodEntity>> getNasaApodByDate(
    NasaApodByDateParams params,
  );
  Future<ResponseModel<List<NasaApodEntity>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  );

  Future<ResponseModel<List<NasaRoverPhotoEntity>>> getNasaRoverPhotos(
    NasaRoverPhotosGetParams params,
  );

  Future<ResponseModel<NasaLibraryEntity>> getNasaLibrary(
    NasaLibraryGetParams params,
  );
}
