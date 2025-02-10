import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';

abstract interface class IUseCaseStreamWithParams<T, Params> {
  Stream<ResponseModel<T>> execute(Params params);
}
