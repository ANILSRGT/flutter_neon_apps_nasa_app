import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/padding_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/routes/app_router.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/image/custom_cached_network_image.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/text/label_text.dart';

class LibraryItemCard extends StatelessWidget {
  const LibraryItemCard({required this.model, super.key});

  final NasaLibraryItemModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(LibraryDetailsRoute(libraryItem: model)),
      child: Card(
        elevation: 2,
        color:
            context.appThemeExt.appColors.background
                .byBrightness(context.extTheme.isDark)
                .value,
        child: Padding(
          padding: AppDoubleValues.sm.extPadding.all,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppDoubleValues.md.value,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: AppDoubleValues.lg.extRadius.border.all,
                  child: CustomCachedNetworkImage(
                    imageUrl: model.thumbnailUrl ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: AppDoubleValues.md.extPadding.symmetric.horizontal,
                child: LabelText(
                  title: model.data?.title ?? 'N/A',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
