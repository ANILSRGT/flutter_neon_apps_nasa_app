import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/rover_photos/nasa_rover_photos_get_params.dart';

abstract class NasaRepo {
  // * APOD (Astronomy Picture of the Day)
  Future<ResponseModel<NasaApodModel>> getNasaApod();
  Future<ResponseModel<NasaApodModel>> getNasaApodByDate(
    NasaApodByDateParams params,
  );
  Future<ResponseModel<List<NasaApodModel>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  );

  // * Rover Photos
  Future<ResponseModel<List<NasaRoverPhotoModel>>> getNasaRoverPhotos(
    NasaRoverPhotosGetParams params,
  );

  // * Nasa Library
  Future<ResponseModel<NasaLibraryModel>> getNasaLibrary(
    NasaLibraryGetParams params,
  );
}
