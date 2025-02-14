part of 'apod_details_page_imports.dart';

@RoutePage()
class ApodDetailsPage extends StatelessWidget {
  const ApodDetailsPage({required this.apod, super.key});

  final NasaApodModel apod;

  @override
  Widget build(BuildContext context) {
    return _ApodDetailsPageView(apod: apod);
  }
}
