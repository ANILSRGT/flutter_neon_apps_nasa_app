import 'package:flutter/material.dart';

extension ThemeModeExtension on ThemeMode {
  _ThemeModeExtension get extMode => _ThemeModeExtension(this);
}

class _ThemeModeExtension {
  const _ThemeModeExtension(this._value);

  final ThemeMode _value;

  String get displayName {
    switch (_value) {
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.system:
        return 'System';
    }
  }
}
