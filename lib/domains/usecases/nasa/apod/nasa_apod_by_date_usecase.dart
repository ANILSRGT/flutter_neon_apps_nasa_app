import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/core/models/usecase/iusecase_with_params.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaApodByDateUsecase
    implements IUseCaseWithParams<NasaApodModel, NasaApodByDateParams> {
  @override
  Future<ResponseModel<NasaApodModel>> execute(
    NasaApodByDateParams params,
  ) async {
    return Injection.I.read<NasaRepo>().getNasaApodByDate(params);
  }
}
