import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  _ThemeContextExtension get extTheme => _ThemeContextExtension(this);
}

class _ThemeContextExtension {
  const _ThemeContextExtension(this._context);

  final BuildContext _context;

  ThemeData get theme => Theme.of(_context);
  TextTheme get textTheme => theme.textTheme;
  Brightness get brightness => theme.brightness;

  bool get isDark => brightness == Brightness.dark;
  bool get isLight => brightness == Brightness.light;

  T byBrightness<T>({
    required T light,
    required T dark,
  }) {
    return isDark ? dark : light;
  }
}
