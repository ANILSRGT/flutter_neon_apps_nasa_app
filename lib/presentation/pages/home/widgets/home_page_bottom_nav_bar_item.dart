part of '../home_page_imports.dart';

class _HomePageBottomNavBarItem extends StatelessWidget {
  const _HomePageBottomNavBarItem({
    required this.tab,
    required this.icon,
  });

  final HomePageTabs tab;
  final Widget icon;

  static Color iconColor(HomePageTabs tab, BuildContext context) {
    return _viewModel.currentHomePageTab == tab
        ? context.appThemeExt.appColors.background
            .byBrightness(context.extTheme.isDark)
            .value
        : context.extTheme.byBrightness(
            light: context.appThemeExt.appColors.grey.value,
            dark: context.appThemeExt.appColors.darkGrey.value,
          );
  }

  Color _iconColor(BuildContext context) {
    return _HomePageBottomNavBarItem.iconColor(tab, context);
  }

  void _onTap() {
    _viewModel.bottomNavPageController.animateToPage(
      tab.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Tooltip(
          message: tab.title,
          child: IconButton(
            onPressed: _onTap,
            color: _iconColor(context),
            icon: icon,
          ),
        );
      },
    );
  }
}
