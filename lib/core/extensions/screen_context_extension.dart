import 'package:flutter/material.dart';

extension ScreenContextExtension on BuildContext {
  _ScreenContextExtension get extScreen => _ScreenContextExtension(this);
}

class _ScreenContextExtension {
  const _ScreenContextExtension(this._context);

  final BuildContext _context;

  Size get screenSize => MediaQuery.of(_context).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  Orientation get orientation => screenSize.width < screenSize.height
      ? Orientation.portrait
      : Orientation.landscape;
  bool get isPortrait => orientation == Orientation.portrait;
  bool get isLandscape => orientation == Orientation.landscape;

  T byOrientation<T>({
    required T portrait,
    required T landscape,
  }) {
    return isPortrait ? portrait : landscape;
  }
}
