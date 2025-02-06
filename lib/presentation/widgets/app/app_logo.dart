import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_apps_nasa_app/core/configs/app_vectors.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      context.extTheme.byBrightness(
        light: AppVectors.logo,
        dark: AppVectors.logoWhite,
      ),
    );
  }
}
