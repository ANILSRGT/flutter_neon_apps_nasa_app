part of '../apod_details_page_imports.dart';

class _ApodDetailsPageBody extends StatelessWidget {
  const _ApodDetailsPageBody({required this.apod});

  final NasaApodModel apod;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (context.router.canPop())
                const Align(
                  alignment: Alignment.centerLeft,
                  child: BackButton(),
                ),
              AppDoubleValues.xl2.extSizedbox.height,
              SizedBox(height: 200, child: _ApodDetailsPageMedia(apod: apod)),
              AppDoubleValues.xl2.extSizedbox.height,
              _ApodDetailsPageDataItem(item: apod),
            ],
          ),
        ),
      ),
    );
  }
}
