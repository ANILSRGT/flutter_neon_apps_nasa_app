import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/core/theme/themes/main/main_app_theme.dart';

enum AppThemesEnum {
  main;

  IAppTheme get theme {
    switch (this) {
      case AppThemesEnum.main:
        return MainAppTheme();
    }
  }
}
