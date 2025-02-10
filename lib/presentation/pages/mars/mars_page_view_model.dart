import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_rover_camera_types.dart';
import 'package:neon_apps_nasa_app/domains/enums/nasa_rover_types.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/rover_photos/nasa_rover_photos_get_params.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/rover_photos/nasa_rover_photos_get_usecase.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';
import 'package:oktoast/oktoast.dart';
part 'mars_page_view_model.g.dart';

class MarsPageViewModel = _MarsPageViewModelBase with _$MarsPageViewModel;

abstract class _MarsPageViewModelBase with Store {
  final earthDateController = TextEditingController(
    text: DateFormat('yyyy-MM-dd')
        .format(DateTime.now().subtract(const Duration(days: 1))),
  );
  final roverController = TextEditingController(
    text: NasaRoverTypes.curiosity.displayName,
  );
  final cameraController = TextEditingController();

  @observable
  DateTime _selectedEarthDate =
      DateTime.now().subtract(const Duration(days: 1));

  @observable
  NasaRoverTypes _selectedRover = NasaRoverTypes.curiosity;

  @observable
  NasaRoverCameraTypes _selectedCamera = NasaRoverCameraTypes.none;

  @observable
  ObservableFuture<List<NasaRoverPhotoModel>?> _roverPhotos =
      ObservableFuture.value(null);

  @computed
  DateTime get selectedEarthDate => _selectedEarthDate;

  @computed
  NasaRoverTypes get selectedRover => _selectedRover;

  @computed
  NasaRoverCameraTypes get selectedCamera => _selectedCamera;

  @computed
  ObservableFuture<List<NasaRoverPhotoModel>?> get roverPhotos => _roverPhotos;

  @action
  void setSelectedEarthDate(DateTime value) {
    _selectedEarthDate = value;
    earthDateController.text = DateFormat('yyyy-MM-dd').format(value);
  }

  @action
  void setSelectedRover(NasaRoverTypes value) {
    _selectedRover = value;
    roverController.text = value.displayName;
  }

  @action
  void setSelectedCamera(NasaRoverCameraTypes value) {
    _selectedCamera = value;
    cameraController.text = value.displayName;
  }

  @action
  Future<void> exploreRoverPhotos() async {
    _roverPhotos = ObservableFuture(
      Injection.I
          .read<NasaRoverPhotosGetUsecase>()
          .execute(
            NasaRoverPhotosGetParams(
              earthDate: selectedEarthDate,
              roverType: selectedRover,
              cameraType: selectedCamera != NasaRoverCameraTypes.none
                  ? selectedCamera
                  : null,
            ),
          )
          .then((val) {
        if (val.isFail) {
          showToast(val.asFail.error.message);
          return [];
        }

        return val.asSuccess.data;
      }),
    );
  }
}
