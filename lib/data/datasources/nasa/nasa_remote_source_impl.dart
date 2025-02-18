import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:neon_apps_nasa_app/core/models/error/error_model.dart';
import 'package:neon_apps_nasa_app/core/models/response/response_model.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_remote_source.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_apod_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_library_item_entity.dart';
import 'package:neon_apps_nasa_app/data/entities/nasa/nasa_rover_photo_entity.dart';
import 'package:neon_apps_nasa_app/data/query_keys/nasa/nasa_apod_query_keys.dart';
import 'package:neon_apps_nasa_app/data/query_keys/nasa/nasa_library_query_keys.dart';
import 'package:neon_apps_nasa_app/data/query_keys/nasa/nasa_rover_photos_query_keys.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_by_date_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/apod/nasa_apod_multiple_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/library/nasa_library_get_params.dart';
import 'package:neon_apps_nasa_app/domains/params/nasa/rover_photos/nasa_rover_photos_get_params.dart';

class NasaRemoteSourceImpl extends NasaRemoteSource {
  NasaRemoteSourceImpl({
    required Dio nasaApodDio,
    required Dio nasaRoverDio,
    required Dio nasaLibraryDio,
  }) : _nasaApodDio = nasaApodDio,
       _nasaRoverDio = nasaRoverDio,
       _nasaLibraryDio = nasaLibraryDio;

  final Dio _nasaApodDio;
  final Dio _nasaRoverDio;
  final Dio _nasaLibraryDio;

  @override
  Future<ResponseModel<NasaApodEntity>> getNasaApod() async {
    try {
      final response = await _nasaApodDio.get<Map<String, dynamic>>('');
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
        '',
        queryParameters: {
          NasaApodQueryKeys.date: DateFormat('yyyy-MM-dd').format(params.date),
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
      final response = await _nasaApodDio.get<List<dynamic>>(
        '',
        queryParameters: {
          if (params.startDate != null)
            NasaApodQueryKeys.startDate: DateFormat(
              'yyyy-MM-dd',
            ).format(params.startDate!),
          if (params.endDate != null)
            NasaApodQueryKeys.endDate: DateFormat(
              'yyyy-MM-dd',
            ).format(params.endDate!),
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
      final entities =
          data
              .map((e) => NasaApodEntity.fromJson(e as Map<String, dynamic>))
              .toList()
              .reversed
              .toList();
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

  @override
  Future<ResponseModel<List<NasaRoverPhotoEntity>>> getNasaRoverPhotos(
    NasaRoverPhotosGetParams params,
  ) async {
    try {
      final response = await _nasaRoverDio.get<Map<String, dynamic>>(
        '/${params.roverType.name}/photos',
        queryParameters: {NasaRoverPhotosQueryKeys.earthDate: params.earthDate},
      );
      final data = response.data;
      if (data == null) {
        return const ResponseModelFail(
          error: ErrorModel(
            message: 'Data not found',
            throwMessage:
                'NasaRemoteSourceImpl.getNasaRoverPhotos : Response data is null',
          ),
        );
      }
      final entities = NasaRoverPhotoEntity.listFromJson(data);
      return ResponseModelSuccess(data: entities);
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'Failed to get data',
          throwMessage: 'NasaRemoteSourceImpl.getNasaRoverPhotos/catch : $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<List<NasaLibraryItemEntity>>> getNasaLibrary(
    NasaLibraryGetParams params,
  ) async {
    try {
      final response = await _nasaLibraryDio.get<Map<String, dynamic>>(
        '',
        queryParameters: {
          NasaLibraryQueryKeys.query: params.query,
          if (params.mediaType != null)
            NasaLibraryQueryKeys.mediaType: params.mediaType!.name,
          if (params.yearStart != null)
            NasaLibraryQueryKeys.yearStart: params.yearStart,
          if (params.yearEnd != null)
            NasaLibraryQueryKeys.yearEnd: params.yearEnd,
          if (params.page != null) NasaLibraryQueryKeys.page: params.page,
          if (params.pageSize != null)
            NasaLibraryQueryKeys.pageSize: params.pageSize!.clamp(1, 100),
        },
      );
      final data = response.data;
      if (data == null) {
        return const ResponseModelFail(
          error: ErrorModel(
            message: 'Data not found',
            throwMessage:
                'NasaRemoteSourceImpl.getNasaLibrary : Response data is null',
          ),
        );
      }
      final dataCollection =
          data[NasaLibraryItemModel.collectionKey] as Map<String, dynamic>?;
      if (dataCollection == null) return const ResponseModelSuccess(data: []);
      final dataItems =
          dataCollection[NasaLibraryItemModel.itemsKey] as List<dynamic>?;
      if (dataItems == null || dataItems.isEmpty) {
        return const ResponseModelSuccess(data: []);
      }
      final entity = await NasaLibraryItemEntity.fromJsonList(
        jsonList: dataItems,
        libraryCollectionCallback: (href) async {
          final collectionRes = await Dio().get<List<dynamic>>(href);
          return collectionRes.data?.map((e) => e as String).toList();
        },
      );
      return ResponseModelSuccess(data: entity);
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'Failed to get data',
          throwMessage: 'NasaRemoteSourceImpl.getNasaLibrary/catch : $e',
        ),
      );
    }
  }
}
