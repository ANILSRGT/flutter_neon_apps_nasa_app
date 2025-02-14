part of '../settings_page_imports.dart';

class _SettingsPageBody extends StatelessWidget {
  const _SettingsPageBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppDoubleValues.lg.extSizedbox.height,
            const _SettingsPageThemeSettings(),
            AppDoubleValues.lg.extSizedbox.height,
            const _SettingsPageConfigurationsSettings(),
          ],
        ),
      ),
    );
  }
}
