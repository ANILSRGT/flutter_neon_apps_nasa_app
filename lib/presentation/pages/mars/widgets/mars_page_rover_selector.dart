part of '../mars_page_imports.dart';

class _MarsPageRoverSelector extends StatelessWidget {
  const _MarsPageRoverSelector({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return CustomInputField(
          controller: viewModel.roverController,
          hint: 'Rover',
          keyboardType: TextInputType.none,
          textInputAction: TextInputAction.none,
          readOnly: true,
          onTap: () async {
            final rover = await OptionBottomSheet.show<NasaRoverTypes>(
              context: context,
              config: OptionBottomSheetConfig(
                title: 'Rovers',
                options:
                    NasaRoverTypes.values
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
              viewModel.setSelectedRover(rover);
            }
          },
        );
      },
    );
  }
}
