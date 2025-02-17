part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentMediaTypeField extends StatelessWidget {
  const _ExplorePageFiltersContentMediaTypeField({required this.viewModel});

  final ExplorePageViewModel viewModel;

  Future<void> _onTapMediaSelect(BuildContext context) async {
    final mediaType = await OptionBottomSheet.show<NasaMediaTypes>(
      context: context,
      config: OptionBottomSheetConfig(
        title: 'Select Media Type',
        options:
            NasaMediaTypes.values.map((e) {
              return OptionBottomSheetOption(value: e, label: e.displayName);
            }).toList(),
      ),
    );

    if (mediaType == null) return;
    viewModel.setSelectedMediaType(mediaType);
  }

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: viewModel.imageTypeController,
      hint: 'Image Type',
      prefixIcon: const Icon(Icons.photo_library_rounded),
      keyboardType: TextInputType.none,
      readOnly: true,
      onTap: () => _onTapMediaSelect(context),
      textInputAction: TextInputAction.none,
    );
  }
}
