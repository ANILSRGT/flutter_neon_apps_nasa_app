import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/core/models/usecase/iusecase_with_params.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaLibraryGetUsecase
    implements IUseCaseWithParams<NasaLibraryModel, NasaLibraryGetParams> {
  @override
  Future<ResponseModel<NasaLibraryModel>> execute(
    NasaLibraryGetParams params,
  ) async {
    return Injection.I.read<NasaRepo>().getNasaLibrary(params);
  }
}
