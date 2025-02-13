part of '../settings_page_imports.dart';

class _SettingsPageThemeSelector extends StatelessWidget {
  const _SettingsPageThemeSelector();

  Future<void> _onThemeTap(BuildContext context) async {
    final theme = await OptionBottomSheet.show<AppThemesEnum>(
      context: context,
      config: OptionBottomSheetConfig(
        title: 'Select Theme',
        options:
            AppThemesEnum.values.map((e) {
              return OptionBottomSheetOption(value: e, label: e.displayName);
            }).toList(),
      ),
    );

    if (theme == null || !context.mounted) return;
    context.read<ThemeNotifier>().setTheme(theme);
  }

  @override
  Widget build(BuildContext context) {
    return _SettingsPageSelectorItem(
      title: 'Theme:',
      onTap: () => _onThemeTap(context),
      value: TitleText(
        title: context.watch<ThemeNotifier>().currentTheme.displayName,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
