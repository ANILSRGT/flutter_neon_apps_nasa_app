import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/core/theme/themes/halloween/halloween_app_theme.dart';
import 'package:neon_apps_nasa_app/core/theme/themes/main/main_app_theme.dart';

enum AppThemesEnum {
  main(displayName: 'Main'),
  halloween(displayName: 'Halloween');

  const AppThemesEnum({required this.displayName});

  final String displayName;

  IAppTheme get theme {
    switch (this) {
      case AppThemesEnum.main:
        return MainAppTheme();
      case AppThemesEnum.halloween:
        return HalloweenAppTheme();
    }
  }
}
