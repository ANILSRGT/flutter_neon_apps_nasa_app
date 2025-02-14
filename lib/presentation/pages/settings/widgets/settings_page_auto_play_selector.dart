part of '../settings_page_imports.dart';

class _SettingsPageAutoPlaySelector extends StatelessWidget {
  const _SettingsPageAutoPlaySelector();

  Future<void> _onChange(BuildContext context, bool value) async {
    await context.read<UserSettingsNotifier>().setUserSettings(
      context.read<UserSettingsNotifier>().userSettings.copyWith(
        autoPlay: value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _SettingsPageSelectorItem(
      icon: const Icon(Icons.play_circle_outline_rounded),
      title: 'Auto Play:',
      value: Switch.adaptive(
        value: context.watch<UserSettingsNotifier>().userSettings.autoPlay,
        onChanged: (value) => _onChange(context, value),
      ),
    );
  }
}
