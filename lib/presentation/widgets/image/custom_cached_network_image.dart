import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/screen_box_constraints_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/core/widgets/shimmer/shimmer.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.imageUrl,
    super.key,
    this.fit,
    this.canShowImage = false,
  });

  final String imageUrl;
  final BoxFit? fit;
  final bool canShowImage;

  void showImage(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) {
        return Dialog(
          child: ClipRRect(
            borderRadius: AppDoubleValues.md.extRadius.border.all,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.contain,
              errorWidget: (context, url, error) => const SizedBox.shrink(),
              progressIndicatorBuilder: (context, url, progress) {
                return Shimmer.fromColors(
                  baseColor: context.appThemeExt.appColors.grey.value,
                  highlightColor: context.appThemeExt.appColors.lightGrey.value,
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: canShowImage ? () => showImage(context) : null,
      child: ClipRRect(
        borderRadius: AppDoubleValues.md.extRadius.border.all,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: fit,
          errorWidget:
              (context, url, error) => LayoutBuilder(
                builder: (_, cst) {
                  return ColoredBox(
                    color: context.appThemeExt.appColors.grey.value,
                    child: Icon(
                      Icons.photo_library_rounded,
                      color: context.appThemeExt.appColors.lightGrey.value,
                      size: cst.extScreen.byOrientation(
                        landscape: cst.maxHeight * 0.2,
                        portrait: cst.maxWidth * 0.2,
                      ),
                    ),
                  );
                },
              ),
          progressIndicatorBuilder: (context, url, progress) {
            return Shimmer.fromColors(
              baseColor: context.appThemeExt.appColors.grey.value,
              highlightColor: context.appThemeExt.appColors.lightGrey.value,
            );
          },
        ),
      ),
    );
  }
}
