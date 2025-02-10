part of '../mars_page_imports.dart';

class _MastPageRoverCameraSelector extends StatelessWidget {
  const _MastPageRoverCameraSelector();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return CustomInputField(
          controller: _viewModel.cameraController,
          hint: 'Camera',
          keyboardType: TextInputType.none,
          textInputAction: TextInputAction.none,
          readOnly: true,
          onTap: () async {
            final camera = await OptionBottomSheet.show<NasaRoverCameraTypes>(
              context: context,
              config: OptionBottomSheetConfig(
                title: 'Cameras',
                options: NasaRoverCameraTypes.values
                    .map(
                      (e) => OptionBottomSheetOption<NasaRoverCameraTypes>(
                        value: e,
                        label: e.displayName,
                      ),
                    )
                    .toList(),
              ),
            );

            if (camera != null) {
              _viewModel.setSelectedCamera(camera);
            }
          },
        );
      },
    );
  }
}
