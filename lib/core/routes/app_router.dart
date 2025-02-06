import 'package:auto_route/auto_route.dart';
import 'package:neon_apps_nasa_app/presentation/pages/explore/explore_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/favorites/favorites_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/home/home_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/mars/mars_page_imports.dart';
import 'package:neon_apps_nasa_app/presentation/pages/splash/splash_page_imports.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: ExploreRoute.page,
        ),
        AutoRoute(
          page: FavoritesRoute.page,
        ),
        AutoRoute(
          page: MarsRoute.page,
        ),
      ];
}
