// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_category_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LibraryCategoryPageViewModel
    on _LibraryCategoryPageViewModelBase, Store {
  Computed<int>? _$pageComputed;

  @override
  int get page => (_$pageComputed ??= Computed<int>(() => super.page,
          name: '_LibraryCategoryPageViewModelBase.page'))
      .value;
  Computed<List<NasaLibraryItemModel>>? _$libraryItemsComputed;

  @override
  List<NasaLibraryItemModel> get libraryItems => (_$libraryItemsComputed ??=
          Computed<List<NasaLibraryItemModel>>(() => super.libraryItems,
              name: '_LibraryCategoryPageViewModelBase.libraryItems'))
      .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_LibraryCategoryPageViewModelBase.isLoading'))
          .value;

  late final _$_pageAtom =
      Atom(name: '_LibraryCategoryPageViewModelBase._page', context: context);

  @override
  int get _page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  set _page(int value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  late final _$_isLoadingAtom = Atom(
      name: '_LibraryCategoryPageViewModelBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_libraryItemsAtom = Atom(
      name: '_LibraryCategoryPageViewModelBase._libraryItems',
      context: context);

  @override
  List<NasaLibraryItemModel> get _libraryItems {
    _$_libraryItemsAtom.reportRead();
    return super._libraryItems;
  }

  @override
  set _libraryItems(List<NasaLibraryItemModel> value) {
    _$_libraryItemsAtom.reportWrite(value, super._libraryItems, () {
      super._libraryItems = value;
    });
  }

  late final _$fetchLibraryItemsAsyncAction = AsyncAction(
      '_LibraryCategoryPageViewModelBase.fetchLibraryItems',
      context: context);

  @override
  Future<void> fetchLibraryItems({required String category, int page = 1}) {
    return _$fetchLibraryItemsAsyncAction
        .run(() => super.fetchLibraryItems(category: category, page: page));
  }

  late final _$_LibraryCategoryPageViewModelBaseActionController =
      ActionController(
          name: '_LibraryCategoryPageViewModelBase', context: context);

  @override
  void nextPage({required String category}) {
    final _$actionInfo = _$_LibraryCategoryPageViewModelBaseActionController
        .startAction(name: '_LibraryCategoryPageViewModelBase.nextPage');
    try {
      return super.nextPage(category: category);
    } finally {
      _$_LibraryCategoryPageViewModelBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page},
libraryItems: ${libraryItems},
isLoading: ${isLoading}
    ''';
  }
}
