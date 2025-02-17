part of '../mars_page_imports.dart';

class _MarsPageBody extends StatelessWidget {
  const _MarsPageBody({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppDoubleValues.md.extSizedbox.height,
                _MarsPageEarthDatePicker(viewModel: viewModel),
                AppDoubleValues.md.extSizedbox.height,
                _MarsPageRoverSelector(viewModel: viewModel),
                AppDoubleValues.md.extSizedbox.height,
                _MarsPageSearchButton(viewModel: viewModel),
                AppDoubleValues.md.extSizedbox.height,
                _MarsPageRoverPhotos(viewModel: viewModel),
              ],
            ),
          ),
        );
      },
    );
  }
}
