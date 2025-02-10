import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/core/models/usecase/iusecase_with_params.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/rover_photos/nasa_rover_photos_get_params.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaRoverPhotosGetUsecase
    implements
        IUseCaseWithParams<List<NasaRoverPhotoModel>,
            NasaRoverPhotosGetParams> {
  @override
  Future<ResponseModel<List<NasaRoverPhotoModel>>> execute(
    NasaRoverPhotosGetParams params,
  ) async {
    return Injection.I.read<NasaRepo>().getNasaRoverPhotos(params);
  }
}
