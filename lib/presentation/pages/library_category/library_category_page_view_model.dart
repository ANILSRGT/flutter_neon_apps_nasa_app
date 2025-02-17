import 'package:mobx/mobx.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/library/nasa_library_get_usecase.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';
import 'package:oktoast/oktoast.dart';

part 'library_category_page_view_model.g.dart';

class LibraryCategoryPageViewModel = _LibraryCategoryPageViewModelBase
    with _$LibraryCategoryPageViewModel;

abstract class _LibraryCategoryPageViewModelBase with Store {
  @observable
  int _page = 1;

  @observable
  bool _isLoading = false;

  @observable
  List<NasaLibraryItemModel> _libraryItems = [];

  @computed
  int get page => _page;

  @computed
  List<NasaLibraryItemModel> get libraryItems => _libraryItems;

  @computed
  bool get isLoading => _isLoading;

  @action
  Future<void> fetchLibraryItems({
    required String category,
    int page = 1,
  }) async {
    if (_isLoading) return;

    _isLoading = true;

    final result = await Injection.I.read<NasaLibraryGetUsecase>().execute(
      NasaLibraryGetParams(query: category, pageSize: 12, page: page),
    );

    runInAction(() {
      if (result.isFail) {
        showToast(result.asFail.error.message);
      } else {
        if (page == 1) {
          _libraryItems = List.from(result.asSuccess.data);
        } else {
          _libraryItems.insertAll(_libraryItems.length, result.asSuccess.data);
        }
      }
      _isLoading = false;
    });
  }

  @action
  void nextPage({required String category}) {
    if (_page >= 100 || _isLoading) return;

    _page++;
    fetchLibraryItems(category: category, page: _page);
  }
}
