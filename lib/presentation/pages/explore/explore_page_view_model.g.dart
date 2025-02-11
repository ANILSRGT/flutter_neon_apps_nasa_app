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
  String toString() {
    return '''
isFilterVisible: ${isFilterVisible}
    ''';
  }
}
