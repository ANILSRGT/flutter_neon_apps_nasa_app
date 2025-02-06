import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neon_apps_nasa_app/core/providers/theme_notifier.dart';
import 'package:neon_apps_nasa_app/core/routes/app_router.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
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
      routerConfig: _appRouter.config(),
    );
  }
}
