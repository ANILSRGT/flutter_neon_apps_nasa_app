part of '../mars_page_imports.dart';

class _MarsPageRoverSelector extends StatelessWidget {
  const _MarsPageRoverSelector();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return CustomInputField(
          controller: _viewModel.roverController,
          hint: 'Rover',
          keyboardType: TextInputType.none,
          textInputAction: TextInputAction.none,
          readOnly: true,
          onTap: () async {
            final rover = await OptionBottomSheet.show<NasaRoverTypes>(
              context: context,
              config: OptionBottomSheetConfig(
                title: 'Rovers',
                options: NasaRoverTypes.values
                    .map(
                      (e) => OptionBottomSheetOption<NasaRoverTypes>(
                        value: e,
                        label: e.displayName,
                      ),
                    )
                    .toList(),
              ),
            );

            if (rover != null) {
              _viewModel.setSelectedRover(rover);
            }
          },
        );
      },
    );
  }
}
