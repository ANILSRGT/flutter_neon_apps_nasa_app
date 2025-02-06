import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/providers/theme_notifier.dart';
import 'package:neon_apps_nasa_app/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

abstract base class IAppTheme {
  AppColors get colors;
  ThemeData getThemeData(bool isDark);
}

extension IAppThemeContextX on BuildContext {
  _IAppThemeContextX get appThemeExt => _IAppThemeContextX(this);
}

final class _IAppThemeContextX {
  const _IAppThemeContextX(this._context);
  final BuildContext _context;

  AppColors get appColors =>
      _context.watch<ThemeNotifier>().currentTheme.theme.colors;
  AppColors get appColorsRead =>
      _context.read<ThemeNotifier>().currentTheme.theme.colors;
}
