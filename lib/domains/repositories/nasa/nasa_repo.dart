import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';

abstract class NasaRepo {
  Future<ResponseModel<NasaApodModel>> getNasaApod();
  Future<ResponseModel<NasaApodModel>> getNasaApodByDate(
    NasaApodByDateParams params,
  );
  Future<ResponseModel<List<NasaApodModel>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  );
}
