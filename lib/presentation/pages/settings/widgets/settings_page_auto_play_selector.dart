part of '../settings_page_imports.dart';

class _SettingsPageAutoPlaySelector extends StatelessWidget {
  const _SettingsPageAutoPlaySelector();

  void _onThemeTap(BuildContext context) async {}

  @override
  Widget build(BuildContext context) {
    return _SettingsPageSelectorItem(
      icon: const Icon(Icons.play_circle_outline_rounded),
      title: 'Auto Play:',
      onTap: () => _onThemeTap(context),
      value: Switch.adaptive(
        value: context.watch<UserSettingsNotifier>().userSettings.autoPlay,
        onChanged:
            (value) => context.read<UserSettingsNotifier>().setUserSettings(
              context.read<UserSettingsNotifier>().userSettings.copyWith(
                autoPlay: value,
              ),
            ),
      ),
    );
  }
}
