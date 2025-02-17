import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_apod_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/presentation/pages/apod_details/apod_details_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/explore/explore_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/favorites/favorites_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/home/home_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/library_details/library_details_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/mars/mars_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/settings/settings_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/splash/splash_page_imports.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(initial: true, page: SplashRoute.page),
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: ExploreRoute.page),
    AutoRoute(page: FavoritesRoute.page),
    AutoRoute(page: MarsRoute.page),
    AutoRoute(page: LibraryDetailsRoute.page),
    AutoRoute(page: ApodDetailsRoute.page),
    AutoRoute(page: SettingsRoute.page),
  ];
}
