import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_remote_source.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_apod_entity.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaRepoImpl extends NasaRepo {
  @override
  Future<ResponseModel<NasaApodEntity>> getNasaApod() async {
    return Injection.I.get<NasaRemoteSource>().getNasaApod();
  }

  @override
  Future<ResponseModel<NasaApodEntity>> getNasaApodByDate(
    NasaApodByDateParams params,
  ) async {
    return Injection.I.get<NasaRemoteSource>().getNasaApodByDate(params);
  }

  @override
  Future<ResponseModel<List<NasaApodEntity>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  ) async {
    return Injection.I.get<NasaRemoteSource>().getNasaApodMultiple(params);
  }
}
