part of '../settings_page_imports.dart';

class _SettingsPageThemeSettings extends StatelessWidget {
  const _SettingsPageThemeSettings();

  @override
  Widget build(BuildContext context) {
    return const _SettingsPageSettingsItem(
      header: 'Theme',
      children: [
        _SettingsPageThemeSelector(),
        _SettingsPageThemeModeSelector(),
      ],
    );
  }
}
