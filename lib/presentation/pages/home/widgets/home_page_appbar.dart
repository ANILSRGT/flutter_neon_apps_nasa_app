part of '../home_page_imports.dart';

class _HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomePageAppBar();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return CustomAppBar(
          title: _viewModel.currentHomePageTab.title,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
