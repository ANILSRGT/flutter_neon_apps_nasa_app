import 'package:neon_apps_nasa_app/domains/enums/nasa_media_types.dart';

class NasaLibraryGetParams {
  const NasaLibraryGetParams({
    required this.query,
    this.mediaType,
    this.yearStart,
    this.yearEnd,
    this.pageSize,
  });

  final String query;
  final NasaMediaTypes? mediaType;
  final int? yearStart;
  final int? yearEnd;
  final int? pageSize;
}
