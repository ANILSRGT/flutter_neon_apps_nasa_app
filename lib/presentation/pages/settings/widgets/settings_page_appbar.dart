part of '../settings_page_imports.dart';

class _SettingsPageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const _SettingsPageAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
