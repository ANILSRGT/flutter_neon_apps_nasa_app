import 'package:neon_apps_nasa_app/core/models/usecase/iusecase_no_response_with_params.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaLibraryToggleFavoriteUseCase
    implements IUseCaseNoResponseWithParams<void, NasaLibraryItemModel> {
  @override
  Future<void> execute(NasaLibraryItemModel params) async {
    return Injection.I.read<NasaRepo>().toggleFavorite(params);
  }
}
