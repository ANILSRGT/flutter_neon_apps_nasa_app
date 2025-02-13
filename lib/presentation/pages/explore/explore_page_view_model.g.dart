// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExplorePageViewModel on _ExplorePageViewModelBase, Store {
  Computed<bool>? _$isFilterVisibleComputed;

  @override
  bool get isFilterVisible =>
      (_$isFilterVisibleComputed ??= Computed<bool>(() => super.isFilterVisible,
              name: '_ExplorePageViewModelBase.isFilterVisible'))
          .value;
  Computed<NasaLibraryMediaTypes>? _$selectedMediaTypeComputed;

  @override
  NasaLibraryMediaTypes get selectedMediaType =>
      (_$selectedMediaTypeComputed ??= Computed<NasaLibraryMediaTypes>(
              () => super.selectedMediaType,
              name: '_ExplorePageViewModelBase.selectedMediaType'))
          .value;
  Computed<ObservableFuture<List<NasaLibraryItemModel>?>>?
      _$nasaLibraryFutureComputed;

  @override
  ObservableFuture<List<NasaLibraryItemModel>?> get nasaLibraryFuture =>
      (_$nasaLibraryFutureComputed ??=
              Computed<ObservableFuture<List<NasaLibraryItemModel>?>>(
                  () => super.nasaLibraryFuture,
                  name: '_ExplorePageViewModelBase.nasaLibraryFuture'))
          .value;

  late final _$_isFilterVisibleAtom = Atom(
      name: '_ExplorePageViewModelBase._isFilterVisible', context: context);

  @override
  bool get _isFilterVisible {
    _$_isFilterVisibleAtom.reportRead();
    return super._isFilterVisible;
  }

  @override
  set _isFilterVisible(bool value) {
    _$_isFilterVisibleAtom.reportWrite(value, super._isFilterVisible, () {
      super._isFilterVisible = value;
    });
  }

  late final _$_selectedMediaTypeAtom = Atom(
      name: '_ExplorePageViewModelBase._selectedMediaType', context: context);

  @override
  NasaLibraryMediaTypes get _selectedMediaType {
    _$_selectedMediaTypeAtom.reportRead();
    return super._selectedMediaType;
  }

  @override
  set _selectedMediaType(NasaLibraryMediaTypes value) {
    _$_selectedMediaTypeAtom.reportWrite(value, super._selectedMediaType, () {
      super._selectedMediaType = value;
    });
  }

  late final _$_nasaLibraryFutureAtom = Atom(
      name: '_ExplorePageViewModelBase._nasaLibraryFuture', context: context);

  @override
  ObservableFuture<List<NasaLibraryItemModel>?> get _nasaLibraryFuture {
    _$_nasaLibraryFutureAtom.reportRead();
    return super._nasaLibraryFuture;
  }

  @override
  set _nasaLibraryFuture(ObservableFuture<List<NasaLibraryItemModel>?> value) {
    _$_nasaLibraryFutureAtom.reportWrite(value, super._nasaLibraryFuture, () {
      super._nasaLibraryFuture = value;
    });
  }

  late final _$fetchNasaLibraryItemsAsyncAction = AsyncAction(
      '_ExplorePageViewModelBase.fetchNasaLibraryItems',
      context: context);

  @override
  Future<void> fetchNasaLibraryItems() {
    return _$fetchNasaLibraryItemsAsyncAction
        .run(() => super.fetchNasaLibraryItems());
  }

  late final _$_ExplorePageViewModelBaseActionController =
      ActionController(name: '_ExplorePageViewModelBase', context: context);

  @override
  void toggleFilterVisibility() {
    final _$actionInfo = _$_ExplorePageViewModelBaseActionController
        .startAction(name: '_ExplorePageViewModelBase.toggleFilterVisibility');
    try {
      return super.toggleFilterVisibility();
    } finally {
      _$_ExplorePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedMediaType(NasaLibraryMediaTypes mediaType) {
    final _$actionInfo = _$_ExplorePageViewModelBaseActionController
        .startAction(name: '_ExplorePageViewModelBase.setSelectedMediaType');
    try {
      return super.setSelectedMediaType(mediaType);
    } finally {
      _$_ExplorePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearFilters() {
    final _$actionInfo = _$_ExplorePageViewModelBaseActionController
        .startAction(name: '_ExplorePageViewModelBase.clearFilters');
    try {
      return super.clearFilters();
    } finally {
      _$_ExplorePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFilterVisible: ${isFilterVisible},
selectedMediaType: ${selectedMediaType},
nasaLibraryFuture: ${nasaLibraryFuture}
    ''';
  }
}
