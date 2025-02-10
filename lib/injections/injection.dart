part of 'injection_imports.dart';

final class Injection {
  Injection._init();
  static final Injection _instance = Injection._init();
  static Injection get I => _instance;

  final _sl = GetIt.instance;

  void init() {
    _NasaFeatureInjection(_sl).init();
  }

  T get<T>() => _sl.get();
}
