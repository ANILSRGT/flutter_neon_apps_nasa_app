part of 'apod_details_page_imports.dart';

class _ApodDetailsPageView extends StatelessWidget {
  const _ApodDetailsPageView({required this.apod});

  final NasaApodModel apod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _ApodDetailsPageBody(apod: apod));
  }
}
