import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/configs/app_rive_animations.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:rive/rive.dart';

class AppIndicator extends StatelessWidget {
  const AppIndicator({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        context.appThemeExt.appColors.black
            .byBrightness(context.extTheme.isDark)
            .value,
        BlendMode.srcIn,
      ),
      child: const RiveAnimation.asset(
        AppRiveAnimations.circularIndicator,
        fit: BoxFit.contain,
      ),
    );
  }
}
