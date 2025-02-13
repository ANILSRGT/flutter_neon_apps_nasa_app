part of '../settings_page_imports.dart';

class _SettingsPageThemeModeSelector extends StatelessWidget {
  const _SettingsPageThemeModeSelector();

  Future<void> _onThemeModeTap(BuildContext context) async {
    final themeMode = await OptionBottomSheet.show<ThemeMode>(
      context: context,
      config: OptionBottomSheetConfig(
        title: 'Select Theme',
        options:
            ThemeMode.values.map((e) {
              return OptionBottomSheetOption(
                value: e,
                label: e.extMode.displayName,
              );
            }).toList(),
      ),
    );

    if (themeMode == null || !context.mounted) return;
    context.read<ThemeNotifier>().setThemeMode(themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return _SettingsPageSelectorItem(
      title: 'Theme Mode:',
      onTap: () => _onThemeModeTap(context),
      value: TitleText(
        title:
            context.watch<ThemeNotifier>().currentThemeMode.extMode.displayName,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
