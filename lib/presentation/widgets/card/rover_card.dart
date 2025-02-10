import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/padding_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/sizedbox_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_rover_photo_model.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/image/custom_cached_network_image.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/text/label_text.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/text/subtitle_text.dart';

class RoverCard extends StatelessWidget {
  const RoverCard({
    required this.model,
    super.key,
  });

  final NasaRoverPhotoModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: context.appThemeExt.appColors.background
          .byBrightness(context.extTheme.isDark)
          .value,
      child: Padding(
        padding: AppDoubleValues.md.extPadding.all,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: AppDoubleValues.lg.extRadius.border.all,
                    child: CustomCachedNetworkImage(
                      imageUrl: model.imgSrc ?? '',
                      fit: BoxFit.cover,
                      canShowImage: true,
                    ),
                  ),
                  Positioned(
                    bottom: AppDoubleValues.sm.value,
                    right: AppDoubleValues.sm.value,
                    child: Container(
                      padding: AppDoubleValues.sm.extPadding.all,
                      decoration: BoxDecoration(
                        color: context.appThemeExt.appColors.black.light.value
                            .withValues(alpha: 0.5),
                        borderRadius: AppDoubleValues.sm.extRadius.border.all,
                      ),
                      child: LabelText(
                        title: model.earthDate ?? 'N/A',
                        color:
                            context.appThemeExt.appColors.black.light.onColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppDoubleValues.sm.extSizedbox.height,
            SubtitleText(
              title: model.rover?.name ?? 'N/A',
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              maxLines: 2,
            ),
            AppDoubleValues.sm.extSizedbox.height,
            LabelText(
              title: model.camera?.fullName ?? 'N/A',
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
