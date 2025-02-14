import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/padding_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/sizedbox_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';

class OptionBottomSheetConfig<T> {
  const OptionBottomSheetConfig({required this.title, required this.options});

  final String title;
  final List<OptionBottomSheetOption<T>> options;
}

class OptionBottomSheet<T> extends StatelessWidget {
  const OptionBottomSheet({required this.config, super.key});

  final OptionBottomSheetConfig<T> config;

  static Future<T?> show<T>({
    required BuildContext context,
    required OptionBottomSheetConfig<T> config,
  }) async {
    return showModalBottomSheet<T>(
      context: context,
      builder: (_) => OptionBottomSheet<T>(config: config),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          AppDoubleValues.md.extPadding.symmetric.horizontal +
          AppDoubleValues.lg.extPadding.symmetric.vertical,
      decoration: BoxDecoration(
        color:
            context.appThemeExt.appColors.background
                .byBrightness(context.extTheme.isDark)
                .value,
        borderRadius: AppDoubleValues.xl.extRadius.border.all,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(config.title, style: context.extTheme.textTheme.titleLarge),
            AppDoubleValues.md.extSizedbox.height,
            Flexible(
              child: Scrollbar(
                thumbVisibility: true,
                trackVisibility: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:
                        config.options
                            .map(
                              (option) => ListTile(
                                title: Text(
                                  option.label,
                                  style: context.extTheme.textTheme.bodyLarge,
                                ),
                                onTap:
                                    () =>
                                        Navigator.of(context).pop(option.value),
                              ),
                            )
                            .expand(
                              (element) => [element, const Divider(height: 0)],
                            )
                            .toList()
                          ..removeLast(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionBottomSheetOption<T> {
  const OptionBottomSheetOption({required this.value, required this.label});

  final T value;
  final String label;
}
