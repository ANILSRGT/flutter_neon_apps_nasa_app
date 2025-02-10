import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_apod_entity.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';

abstract class NasaRemoteSource {
  Future<ResponseModel<NasaApodEntity>> getNasaApod();
  Future<ResponseModel<NasaApodEntity>> getNasaApodByDate(
    NasaApodByDateParams params,
  );
  Future<ResponseModel<List<NasaApodEntity>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  );
}
