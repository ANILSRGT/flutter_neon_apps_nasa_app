import 'package:neon_apps_nasa_app/core/models/usecase/iusecase_no_future_no_response.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

class NasaLibraryGetFavoritesUseCase
    implements IUseCaseNoFutureNoResponse<List<NasaLibraryItemModel>> {
  @override
  List<NasaLibraryItemModel> execute() {
    return Injection.I.read<NasaRepo>().getNasaFavoriteLibrary();
  }
}
