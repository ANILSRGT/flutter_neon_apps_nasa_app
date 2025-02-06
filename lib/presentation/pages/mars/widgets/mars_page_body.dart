part of '../mars_page_imports.dart';

class _MarsPageBody extends StatelessWidget {
  const _MarsPageBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
        child: const Column(
          children: [
            _MarsPageMarsWeather(),
          ],
        ),
      ),
    );
  }
}
