import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_remote_source.dart';
import 'package:neon_apps_nasa_app/data/datasources/nasa/nasa_remote_source_impl.dart';
import 'package:neon_apps_nasa_app/data/repositories/nasa/nasa_repo_impl.dart';
import 'package:neon_apps_nasa_app/domains/repositories/nasa/nasa_repo.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/apod/nasa_apod_by_date_usecase.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/apod/nasa_apod_get_usecase.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/apod/nasa_apod_multiple_usecase.dart';

part 'injection.dart';
part 'nasa_feature_injection.dart';
