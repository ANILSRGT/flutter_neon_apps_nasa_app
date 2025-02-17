import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:neon_apps_nasa_app/core/cache/cache_manager.dart';
import 'package:neon_apps_nasa_app/core/configs/app_env.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/providers/nasa_favorite_library_notifier.dart';
import 'package:neon_apps_nasa_app/core/providers/theme_notifier.dart';
import 'package:neon_apps_nasa_app/core/providers/user_settings_notifier.dart';
import 'package:neon_apps_nasa_app/core/routes/app_router.dart';
import 'package:neon_apps_nasa_app/core/routes/observers/custom_route_observer.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await AppEnv.I.init();
  await CacheManager.I.init();

  final themeCache = CacheManager.I.theme.getTheme();
  final themeModeCache = CacheManager.I.themeMode.getThemeMode();

  Injection.I.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ThemeNotifier()
              ..setTheme(themeCache)
              ..setThemeMode(themeModeCache);
          },
        ),
        ChangeNotifierProvider(
          create: (_) => UserSettingsNotifier()..loadUserSettings(),
        ),
        ChangeNotifierProvider(
          create: (_) => NasaFavoriteLibraryNotifier()..loadFavorites(),
        ),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.currentTheme.theme.getThemeData(false),
      darkTheme: themeNotifier.currentTheme.theme.getThemeData(true),
      themeMode: themeNotifier.currentThemeMode,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.noScaling),
          child: OKToast(
            position: ToastPosition.bottom,
            backgroundColor: context.appThemeExt.appColors.grey.value,
            textStyle: context.extTheme.textTheme.bodyLarge?.copyWith(
              color: context.appThemeExt.appColors.grey.onColor,
            ),
            radius: AppDoubleValues.md.value,
            dismissOtherOnShow: true,
            textAlign: TextAlign.center,
            child: StreamBuilder(
              stream:
                  InternetConnection.createInstance(
                    checkInterval: const Duration(seconds: 5),
                  ).onStatusChange,
              initialData: InternetStatus.connected,
              builder: (context, snapshot) {
                if (snapshot.data != null &&
                    snapshot.data == InternetStatus.disconnected) {
                  showToast(
                    'No internet connection',
                    duration: const Duration(seconds: 3),
                    position: ToastPosition.bottom,
                    backgroundColor:
                        context.appThemeExt.appColorsRead.error
                            .byBrightness(context.extTheme.isDark)
                            .value,
                    textStyle: context.extTheme.textTheme.bodyLarge?.copyWith(
                      color:
                          context.appThemeExt.appColorsRead.error
                              .byBrightness(context.extTheme.isDark)
                              .onColor,
                    ),
                    radius: AppDoubleValues.md.value,
                    textAlign: TextAlign.center,
                  );
                }
                return child!;
              },
            ),
          ),
        );
      },
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [CustomRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
