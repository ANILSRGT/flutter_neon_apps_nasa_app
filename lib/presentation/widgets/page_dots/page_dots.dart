import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';

class PageDots extends StatelessWidget {
  const PageDots({
    required this.currentPage,
    required this.pageCount,
    required this.onPageSelected,
    super.key,
  });

  final int currentPage;
  final int pageCount;
  final void Function(int selected) onPageSelected;

  void _onPageSelected(int selected) {
    onPageSelected(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: AppDoubleValues.xs.value,
      children: pageCount > 0
          ? List.generate(
              pageCount,
              (index) => GestureDetector(
                onTap: () => _onPageSelected(index),
                child: Icon(
                  Icons.circle,
                  color: context.extTheme.byBrightness(
                    light: currentPage == index
                        ? context.appThemeExt.appColors.black.light.value
                        : context.appThemeExt.appColors.grey.value,
                    dark: currentPage == index
                        ? context.appThemeExt.appColors.white.light.value
                        : context.appThemeExt.appColors.grey.value,
                  ),
                  size: AppDoubleValues.lg.value * 0.75,
                ),
              ),
            )
          : [],
    );
  }
}
