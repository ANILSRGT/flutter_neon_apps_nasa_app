// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageViewModel on _HomePageViewModelBase, Store {
  Computed<int>? _$featuredPageIndexComputed;

  @override
  int get featuredPageIndex => (_$featuredPageIndexComputed ??= Computed<int>(
          () => super.featuredPageIndex,
          name: '_HomePageViewModelBase.featuredPageIndex'))
      .value;
  Computed<HomePageTabs>? _$currentHomePageTabComputed;

  @override
  HomePageTabs get currentHomePageTab => (_$currentHomePageTabComputed ??=
          Computed<HomePageTabs>(() => super.currentHomePageTab,
              name: '_HomePageViewModelBase.currentHomePageTab'))
      .value;
  Computed<ObservableFuture<List<NasaApodModel>?>>? _$featuredApodListComputed;

  @override
  ObservableFuture<List<NasaApodModel>?> get featuredApodList =>
      (_$featuredApodListComputed ??=
              Computed<ObservableFuture<List<NasaApodModel>?>>(
                  () => super.featuredApodList,
                  name: '_HomePageViewModelBase.featuredApodList'))
          .value;
  Computed<
          Map<HomePageLibraries,
              ObservableFuture<List<NasaLibraryItemModel>?>>>?
      _$libraryListComputed;

  @override
  Map<HomePageLibraries, ObservableFuture<List<NasaLibraryItemModel>?>>
      get libraryList => (_$libraryListComputed ??= Computed<
                  Map<HomePageLibraries,
                      ObservableFuture<List<NasaLibraryItemModel>?>>>(
              () => super.libraryList,
              name: '_HomePageViewModelBase.libraryList'))
          .value;

  late final _$_featuredPageIndexAtom =
      Atom(name: '_HomePageViewModelBase._featuredPageIndex', context: context);

  @override
  int get _featuredPageIndex {
    _$_featuredPageIndexAtom.reportRead();
    return super._featuredPageIndex;
  }

  @override
  set _featuredPageIndex(int value) {
    _$_featuredPageIndexAtom.reportWrite(value, super._featuredPageIndex, () {
      super._featuredPageIndex = value;
    });
  }

  late final _$_currentHomePageTabAtom = Atom(
      name: '_HomePageViewModelBase._currentHomePageTab', context: context);

  @override
  HomePageTabs get _currentHomePageTab {
    _$_currentHomePageTabAtom.reportRead();
    return super._currentHomePageTab;
  }

  @override
  set _currentHomePageTab(HomePageTabs value) {
    _$_currentHomePageTabAtom.reportWrite(value, super._currentHomePageTab, () {
      super._currentHomePageTab = value;
    });
  }

  late final _$_featuredApodListAtom =
      Atom(name: '_HomePageViewModelBase._featuredApodList', context: context);

  @override
  ObservableFuture<List<NasaApodModel>?> get _featuredApodList {
    _$_featuredApodListAtom.reportRead();
    return super._featuredApodList;
  }

  @override
  set _featuredApodList(ObservableFuture<List<NasaApodModel>?> value) {
    _$_featuredApodListAtom.reportWrite(value, super._featuredApodList, () {
      super._featuredApodList = value;
    });
  }

  late final _$_libraryListAtom =
      Atom(name: '_HomePageViewModelBase._libraryList', context: context);

  @override
  Map<HomePageLibraries, ObservableFuture<List<NasaLibraryItemModel>?>>
      get _libraryList {
    _$_libraryListAtom.reportRead();
    return super._libraryList;
  }

  @override
  set _libraryList(
      Map<HomePageLibraries, ObservableFuture<List<NasaLibraryItemModel>?>>
          value) {
    _$_libraryListAtom.reportWrite(value, super._libraryList, () {
      super._libraryList = value;
    });
  }

  late final _$_HomePageViewModelBaseActionController =
      ActionController(name: '_HomePageViewModelBase', context: context);

  @override
  void setFeaturedPageIndex(int index) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.setFeaturedPageIndex');
    try {
      return super.setFeaturedPageIndex(index);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHomePageTab(HomePageTabs tab) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.changeHomePageTab');
    try {
      return super.changeHomePageTab(tab);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchFeaturedApodList() {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.fetchFeaturedApodList');
    try {
      return super.fetchFeaturedApodList();
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchLibraryList(HomePageLibraries library) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.fetchLibraryList');
    try {
      return super.fetchLibraryList(library);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
featuredPageIndex: ${featuredPageIndex},
currentHomePageTab: ${currentHomePageTab},
featuredApodList: ${featuredApodList},
libraryList: ${libraryList}
    ''';
  }
}
