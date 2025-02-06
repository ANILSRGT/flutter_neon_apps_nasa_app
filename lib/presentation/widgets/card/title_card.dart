import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/padding_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    required this.title,
    required this.background,
    super.key,
  });

  final String title;
  final Widget background;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDoubleValues.lg.value),
      child: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.appThemeExt.appColors.black.light.value
                    .withValues(alpha: 0.25),
                BlendMode.darken,
              ),
              child: background,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: AppDoubleValues.lg.extPadding.all,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.extTheme.textTheme.titleLarge!.copyWith(
                  color: context.appThemeExt.appColors.black.light.onColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
