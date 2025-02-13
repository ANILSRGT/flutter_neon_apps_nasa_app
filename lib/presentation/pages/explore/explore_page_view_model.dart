import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:neon_apps_nasa_app/core/utils/penta_debouncer.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_library_media_types.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/library/nasa_library_get_usecase.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';
import 'package:oktoast/oktoast.dart';

part 'explore_page_view_model.g.dart';

class ExplorePageViewModel = _ExplorePageViewModelBase
    with _$ExplorePageViewModel;

abstract class _ExplorePageViewModelBase with Store {
  final searchController = TextEditingController();
  late final imageTypeController = TextEditingController(
    text: _selectedMediaType.displayName,
  );
  final yearFromController = TextEditingController(
    text: DateTime.now().year.toString(),
  );
  final yearToController = TextEditingController();

  late final PentaDebounceable<void, void> onChangedSearch =
      PentaDebouncer.debounce<void, void>(
        debounceDuration: Durations.long2,
        function: (value) => fetchNasaLibraryItems(),
      );

  @observable
  bool _isFilterVisible = false;

  @observable
  NasaLibraryMediaTypes _selectedMediaType = NasaLibraryMediaTypes.image;

  @computed
  bool get isFilterVisible => _isFilterVisible;

  @observable
  ObservableFuture<List<NasaLibraryItemModel>?> _nasaLibraryFuture =
      ObservableFuture.value(null);

  @computed
  NasaLibraryMediaTypes get selectedMediaType => _selectedMediaType;

  @computed
  ObservableFuture<List<NasaLibraryItemModel>?> get nasaLibraryFuture =>
      _nasaLibraryFuture;

  @action
  void toggleFilterVisibility() {
    _isFilterVisible = !_isFilterVisible;
  }

  @action
  void setSelectedMediaType(NasaLibraryMediaTypes mediaType) {
    _selectedMediaType = mediaType;
    imageTypeController.text = mediaType.displayName;
  }

  @action
  Future<void> fetchNasaLibraryItems() async {
    _nasaLibraryFuture = ObservableFuture(
      Injection.I
          .read<NasaLibraryGetUsecase>()
          .execute(
            NasaLibraryGetParams(
              query: searchController.text,
              mediaType: _selectedMediaType,
              yearStart: int.tryParse(yearFromController.text),
              yearEnd: int.tryParse(yearToController.text),
            ),
          )
          .then((value) {
            if (value.isFail) {
              showToast(value.asFail.error.message);
              return null;
            }

            return value.asSuccess.data;
          }),
    );
  }

  @action
  void clearFilters() {
    searchController.clear();
    setSelectedMediaType(NasaLibraryMediaTypes.image);
    yearFromController.clear();
    yearToController.clear();
  }
}
