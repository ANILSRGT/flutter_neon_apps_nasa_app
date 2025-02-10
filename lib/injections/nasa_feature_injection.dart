part of 'injection_imports.dart';

final class _NasaFeatureInjection {
  const _NasaFeatureInjection(this._sl);

  final GetIt _sl;

  void init() {
    final nasaApodDio = Dio(
      BaseOptions(
        baseUrl: 'https://api.nasa.gov/planetary/',
        queryParameters: {
          'api_key': 'DEMO_KEY',
        },
      ),
    );

    _sl
      ..registerLazySingleton<NasaRemoteSource>(
        () => NasaRemoteSourceImpl(nasaApodDio: nasaApodDio),
      )
      ..registerLazySingleton<NasaRepo>(NasaRepoImpl.new)
      ..registerFactory(NasaApodGetUsecase.new)
      ..registerFactory(NasaApodByDateUsecase.new)
      ..registerFactory(NasaApodMultipleUsecase.new);
  }
}
