import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/apod/nasa_apod_multiple_usecase.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/library/nasa_library_get_usecase.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/home/enums/home_page_libraries.dart';
import 'package:neon_apps_nasa_app/presentation/pages/home/home_page_imports.dart';

part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  final PageController featuredPageController = PageController();
  final PageController bottomNavPageController = PageController();

  @observable
  int _featuredPageIndex = 0;

  @observable
  HomePageTabs _currentHomePageTab = HomePageTabs.home;

  @observable
  ObservableFuture<List<NasaApodModel>?> _featuredApodList =
      ObservableFuture.value(null);

  @observable
  Map<HomePageLibraries, ObservableFuture<List<NasaLibraryItemModel>?>>
  _libraryList = {
    for (var library in HomePageLibraries.values)
      library: ObservableFuture.value(null),
  };

  @computed
  int get featuredPageIndex => _featuredPageIndex;

  @computed
  HomePageTabs get currentHomePageTab => _currentHomePageTab;

  @computed
  ObservableFuture<List<NasaApodModel>?> get featuredApodList =>
      _featuredApodList;

  @computed
  Map<HomePageLibraries, ObservableFuture<List<NasaLibraryItemModel>?>>
  get libraryList => _libraryList;

  @action
  void setFeaturedPageIndex(int index) {
    _featuredPageIndex = index;
  }

  void onFeaturedPageSelected(int index) {
    featuredPageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @action
  void changeHomePageTab(HomePageTabs tab) {
    _currentHomePageTab = tab;
  }

  void onTabPressed(HomePageTabs tab) {
    bottomNavPageController.animateToPage(
      tab.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @action
  void fetchFeaturedApodList() {
    _featuredApodList = ObservableFuture(
      Injection.I
          .read<NasaApodMultipleUsecase>()
          .execute(
            NasaApodMultipleParams(
              startDate: DateTime.now().subtract(const Duration(days: 5)),
              endDate: DateTime.now(),
            ),
          )
          .then((value) {
            if (value.isFail) return [];
            return value.asSuccess.data;
          }),
    );
  }

  @action
  void fetchLibraryList(HomePageLibraries library) {
    _libraryList = {
      for (final key in _libraryList.keys)
        key:
            key == library
                ? ObservableFuture(
                  Injection.I
                      .read<NasaLibraryGetUsecase>()
                      .execute(
                        NasaLibraryGetParams(
                          query: library.query,
                          yearStart: DateTime.now().year,
                          pageSize: 10,
                        ),
                      )
                      .then((value) {
                        if (value.isFail) return [];
                        return value.asSuccess.data;
                      }),
                )
                : _libraryList[key] ?? ObservableFuture.value([]),
    };
  }
}
