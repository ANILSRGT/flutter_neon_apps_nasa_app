// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mars_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MarsPageViewModel on _MarsPageViewModelBase, Store {
  Computed<int>? _$selectedSolIndexComputed;

  @override
  int get selectedSolIndex => (_$selectedSolIndexComputed ??= Computed<int>(
          () => super.selectedSolIndex,
          name: '_MarsPageViewModelBase.selectedSolIndex'))
      .value;

  late final _$_selectedSolIndexAtom =
      Atom(name: '_MarsPageViewModelBase._selectedSolIndex', context: context);

  @override
  int get _selectedSolIndex {
    _$_selectedSolIndexAtom.reportRead();
    return super._selectedSolIndex;
  }

  @override
  set _selectedSolIndex(int value) {
    _$_selectedSolIndexAtom.reportWrite(value, super._selectedSolIndex, () {
      super._selectedSolIndex = value;
    });
  }

  late final _$_MarsPageViewModelBaseActionController =
      ActionController(name: '_MarsPageViewModelBase', context: context);

  @override
  void setSelectedSolIndex(int value) {
    final _$actionInfo = _$_MarsPageViewModelBaseActionController.startAction(
        name: '_MarsPageViewModelBase.setSelectedSolIndex');
    try {
      return super.setSelectedSolIndex(value);
    } finally {
      _$_MarsPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedSolIndex: ${selectedSolIndex}
    ''';
  }
}
