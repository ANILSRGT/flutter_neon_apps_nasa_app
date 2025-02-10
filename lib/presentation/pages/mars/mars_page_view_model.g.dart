// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mars_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MarsPageViewModel on _MarsPageViewModelBase, Store {
  Computed<DateTime>? _$selectedEarthDateComputed;

  @override
  DateTime get selectedEarthDate => (_$selectedEarthDateComputed ??=
          Computed<DateTime>(() => super.selectedEarthDate,
              name: '_MarsPageViewModelBase.selectedEarthDate'))
      .value;
  Computed<NasaRoverTypes>? _$selectedRoverComputed;

  @override
  NasaRoverTypes get selectedRover => (_$selectedRoverComputed ??=
          Computed<NasaRoverTypes>(() => super.selectedRover,
              name: '_MarsPageViewModelBase.selectedRover'))
      .value;
  Computed<NasaRoverCameraTypes>? _$selectedCameraComputed;

  @override
  NasaRoverCameraTypes get selectedCamera => (_$selectedCameraComputed ??=
          Computed<NasaRoverCameraTypes>(() => super.selectedCamera,
              name: '_MarsPageViewModelBase.selectedCamera'))
      .value;
  Computed<ObservableFuture<List<NasaRoverPhotoModel>?>>? _$roverPhotosComputed;

  @override
  ObservableFuture<List<NasaRoverPhotoModel>?> get roverPhotos =>
      (_$roverPhotosComputed ??=
              Computed<ObservableFuture<List<NasaRoverPhotoModel>?>>(
                  () => super.roverPhotos,
                  name: '_MarsPageViewModelBase.roverPhotos'))
          .value;

  late final _$_selectedEarthDateAtom =
      Atom(name: '_MarsPageViewModelBase._selectedEarthDate', context: context);

  @override
  DateTime get _selectedEarthDate {
    _$_selectedEarthDateAtom.reportRead();
    return super._selectedEarthDate;
  }

  @override
  set _selectedEarthDate(DateTime value) {
    _$_selectedEarthDateAtom.reportWrite(value, super._selectedEarthDate, () {
      super._selectedEarthDate = value;
    });
  }

  late final _$_selectedRoverAtom =
      Atom(name: '_MarsPageViewModelBase._selectedRover', context: context);

  @override
  NasaRoverTypes get _selectedRover {
    _$_selectedRoverAtom.reportRead();
    return super._selectedRover;
  }

  @override
  set _selectedRover(NasaRoverTypes value) {
    _$_selectedRoverAtom.reportWrite(value, super._selectedRover, () {
      super._selectedRover = value;
    });
  }

  late final _$_selectedCameraAtom =
      Atom(name: '_MarsPageViewModelBase._selectedCamera', context: context);

  @override
  NasaRoverCameraTypes get _selectedCamera {
    _$_selectedCameraAtom.reportRead();
    return super._selectedCamera;
  }

  @override
  set _selectedCamera(NasaRoverCameraTypes value) {
    _$_selectedCameraAtom.reportWrite(value, super._selectedCamera, () {
      super._selectedCamera = value;
    });
  }

  late final _$_roverPhotosAtom =
      Atom(name: '_MarsPageViewModelBase._roverPhotos', context: context);

  @override
  ObservableFuture<List<NasaRoverPhotoModel>?> get _roverPhotos {
    _$_roverPhotosAtom.reportRead();
    return super._roverPhotos;
  }

  @override
  set _roverPhotos(ObservableFuture<List<NasaRoverPhotoModel>?> value) {
    _$_roverPhotosAtom.reportWrite(value, super._roverPhotos, () {
      super._roverPhotos = value;
    });
  }

  late final _$exploreRoverPhotosAsyncAction = AsyncAction(
      '_MarsPageViewModelBase.exploreRoverPhotos',
      context: context);

  @override
  Future<void> exploreRoverPhotos() {
    return _$exploreRoverPhotosAsyncAction
        .run(() => super.exploreRoverPhotos());
  }

  late final _$_MarsPageViewModelBaseActionController =
      ActionController(name: '_MarsPageViewModelBase', context: context);

  @override
  void setSelectedEarthDate(DateTime value) {
    final _$actionInfo = _$_MarsPageViewModelBaseActionController.startAction(
        name: '_MarsPageViewModelBase.setSelectedEarthDate');
    try {
      return super.setSelectedEarthDate(value);
    } finally {
      _$_MarsPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedRover(NasaRoverTypes value) {
    final _$actionInfo = _$_MarsPageViewModelBaseActionController.startAction(
        name: '_MarsPageViewModelBase.setSelectedRover');
    try {
      return super.setSelectedRover(value);
    } finally {
      _$_MarsPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedCamera(NasaRoverCameraTypes value) {
    final _$actionInfo = _$_MarsPageViewModelBaseActionController.startAction(
        name: '_MarsPageViewModelBase.setSelectedCamera');
    try {
      return super.setSelectedCamera(value);
    } finally {
      _$_MarsPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedEarthDate: ${selectedEarthDate},
selectedRover: ${selectedRover},
selectedCamera: ${selectedCamera},
roverPhotos: ${roverPhotos}
    ''';
  }
}
