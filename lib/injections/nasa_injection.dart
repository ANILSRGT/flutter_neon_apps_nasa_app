part of 'injection_imports.dart';

final class _NasaInjection {
  const _NasaInjection(this._sl);

  final GetIt _sl;

  void init() {
    final nasaApiKey = AppEnv.I.nasaApiKey;

    final nasaApodDio = Dio(
      BaseOptions(
        baseUrl: 'https://api.nasa.gov/planetary',
        queryParameters: {
          'api_key': nasaApiKey,
        },
      ),
    );

    final nasaRoverDio = Dio(
      BaseOptions(
        baseUrl: 'https://api.nasa.gov/mars-photos/api/v1/rovers',
        queryParameters: {
          'api_key': nasaApiKey,
        },
      ),
    );

    _sl
      ..registerLazySingleton<NasaRemoteSource>(
        () => NasaRemoteSourceImpl(
          nasaApodDio: nasaApodDio,
          nasaRoverDio: nasaRoverDio,
        ),
      )
      ..registerLazySingleton<NasaRepo>(NasaRepoImpl.new)
      ..registerFactory(NasaApodGetUsecase.new)
      ..registerFactory(NasaApodByDateUsecase.new)
      ..registerFactory(NasaApodMultipleUsecase.new)
      ..registerFactory(NasaRoverPhotosGetUsecase.new);
  }
}
