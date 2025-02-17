import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/core/widgets/shimmer/shimmer.dart';

class GridViewShimmer extends StatelessWidget {
  const GridViewShimmer({
    required this.aspectRatio,
    required this.count,
    super.key,
    this.itemWidth = 180,
  });

  final int count;
  final double aspectRatio;
  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, cst) {
        return GridView.builder(
          shrinkWrap: true,
          itemCount: count,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: cst.maxWidth ~/ itemWidth,
            crossAxisSpacing: AppDoubleValues.md.value,
            mainAxisSpacing: AppDoubleValues.md.value,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: (_, index) {
            return ClipRRect(
              borderRadius: AppDoubleValues.md.extRadius.border.all,
              child: Shimmer.fromColors(
                baseColor: context.appThemeExt.appColors.grey.value,
                highlightColor: context.appThemeExt.appColors.lightGrey.value,
              ),
            );
          },
        );
      },
    );
  }
}
