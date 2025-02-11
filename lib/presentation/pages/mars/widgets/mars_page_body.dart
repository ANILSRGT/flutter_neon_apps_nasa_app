part of '../mars_page_imports.dart';

class _MarsPageBody extends StatelessWidget {
  const _MarsPageBody();

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
                const _MarsPageEarthDatePicker(),
                AppDoubleValues.md.extSizedbox.height,
                const _MarsPageRoverSelector(),
                AppDoubleValues.md.extSizedbox.height,
                const _MarsPageSearchButton(),
                AppDoubleValues.md.extSizedbox.height,
                const _MarsPageRoverPhotos(),
              ],
            ),
          ),
        );
      },
    );
  }
}
