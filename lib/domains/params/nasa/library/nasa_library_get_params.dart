import 'package:neon_apps_nasa_app/domains/enums/nasa_library_media_types.dart';

class NasaLibraryGetParams {
  const NasaLibraryGetParams({
    required this.query,
    this.mediaType,
    this.yearStart,
    this.yearEnd,
  });

  final String query;
  final NasaLibraryMediaTypes? mediaType;
  final int? yearStart;
  final int? yearEnd;
}
