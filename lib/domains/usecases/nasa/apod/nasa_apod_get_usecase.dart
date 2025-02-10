import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/core/models/usecase/iusecase.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaApodGetUsecase implements IUseCase<NasaApodModel> {
  @override
  Future<ResponseModel<NasaApodModel>> execute() async {
    return Injection.I.read<NasaRepo>().getNasaApod();
  }
}
