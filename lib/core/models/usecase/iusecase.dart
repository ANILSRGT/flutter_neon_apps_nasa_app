import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';

abstract interface class IUseCase<T> {
  Future<ResponseModel<T>> execute();
}
