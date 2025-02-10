import 'package:dio/dio.dart';
import 'package:neon_apps_nasa_app/core/models/error/error_model.dart';
import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_remote_source.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_apod_entity.dart';
import 'package:neon_apps_nasa_app/data/query_keys/nasa/nasa_apod_query_keys.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';

class NasaRemoteSourceImpl extends NasaRemoteSource {
  NasaRemoteSourceImpl({
    required Dio nasaApodDio,
  }) : _nasaApodDio = nasaApodDio;

  final Dio _nasaApodDio;

  @override
  Future<ResponseModel<NasaApodEntity>> getNasaApod() async {
    try {
      final response = await _nasaApodDio.get<Map<String, dynamic>>('/');
      final data = response.data;
      if (data == null) {
        return const ResponseModelFail(
          error: ErrorModel(
            message: 'Data not found',
            throwMessage:
                'NasaRemoteSourceImpl.getNasaApod : Response data is null',
          ),
        );
      }
      final entity = NasaApodEntity.fromJson(data);
      return ResponseModelSuccess(data: entity);
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'Failed to get data',
          throwMessage: 'NasaRemoteSourceImpl.getNasaApod/catch : $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<NasaApodEntity>> getNasaApodByDate(
    NasaApodByDateParams params,
  ) async {
    try {
      final response = await _nasaApodDio.get<Map<String, dynamic>>(
        '/',
        queryParameters: {
          NasaApodQueryKeys.date: params.date,
        },
      );
      final data = response.data;
      if (data == null) {
        return const ResponseModelFail(
          error: ErrorModel(
            message: 'Data not found',
            throwMessage:
                'NasaRemoteSourceImpl.getNasaApodByDate : Response data is null',
          ),
        );
      }
      final entity = NasaApodEntity.fromJson(data);
      return ResponseModelSuccess(data: entity);
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'Failed to get data',
          throwMessage: 'NasaRemoteSourceImpl.getNasaApodByDate/catch : $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<List<NasaApodEntity>>> getNasaApodMultiple(
    NasaApodMultipleParams params,
  ) async {
    try {
      final response = await _nasaApodDio.get<List<Map<String, dynamic>>>(
        '/',
        queryParameters: {
          if (params.startDate != null)
            NasaApodQueryKeys.startDate: params.startDate,
          if (params.endDate != null) NasaApodQueryKeys.endDate: params.endDate,
          if (params.count != null) NasaApodQueryKeys.count: params.count,
          if (params.thumbs != null) NasaApodQueryKeys.thumbs: params.thumbs,
        },
      );
      final data = response.data;
      if (data == null) {
        return const ResponseModelFail(
          error: ErrorModel(
            message: 'Data not found',
            throwMessage:
                'NasaRemoteSourceImpl.getNasaApodMultiple : Response data is null',
          ),
        );
      }
      final entities = data.map(NasaApodEntity.fromJson).toList();
      return ResponseModelSuccess(data: entities);
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'Failed to get data',
          throwMessage: 'NasaRemoteSourceImpl.getNasaApodMultiple/catch : $e',
        ),
      );
    }
  }
}
