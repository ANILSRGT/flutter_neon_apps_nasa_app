import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/utils/svg_color_mapper.dart';

final class AppVectors {
  const AppVectors._();

  static const String logo = 'assets/app/logo.svg';
  static const String logoWhite = 'assets/app/logo_white.svg';
  static const String marsIcon = 'assets/vectors/mars_icon.svg';

  static SvgColorMapper marsIconColorMapper(Color toColor) => SvgColorMapper(
        fromColor: Colors.white,
        toColor: toColor,
      );
}
