import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/padding_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/routes/app_router.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/app/app_logo.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/text/title_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: AppDoubleValues.md.value,
        children: [
          const FittedBox(child: AppLogo()),
          Expanded(child: TitleText(title: title, textAlign: TextAlign.center)),
          GestureDetector(
            onTap: () => context.router.push(const SettingsRoute()),
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
