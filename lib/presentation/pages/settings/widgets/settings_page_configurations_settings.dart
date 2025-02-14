part of '../settings_page_imports.dart';

class _SettingsPageConfigurationsSettings extends StatelessWidget {
  const _SettingsPageConfigurationsSettings();

  @override
  Widget build(BuildContext context) {
    return const _SettingsPageSettingsItem(
      header: 'Configurations',
      children: [_SettingsPageAutoPlaySelector()],
    );
  }
}
