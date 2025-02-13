part of 'settings_page_imports.dart';

class _SettingsPageView extends StatelessWidget {
  const _SettingsPageView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _SettingsPageAppbar(),
      body: _SettingsPageBody(),
    );
  }
}
