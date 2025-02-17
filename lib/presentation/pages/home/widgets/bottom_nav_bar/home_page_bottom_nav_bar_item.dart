part of '../../home_page_imports.dart';

class _HomePageBottomNavBarItem extends StatelessWidget {
  const _HomePageBottomNavBarItem({
    required this.tab,
    required this.icon,
    required this.viewModel,
  });

  final HomePageTabs tab;
  final Widget icon;
  final HomePageViewModel viewModel;

  static Color iconColor({
    required BuildContext context,
    required bool isSelected,
  }) {
    return isSelected
        ? context.appThemeExt.appColors.background
            .byBrightness(context.extTheme.isDark)
            .value
        : context.extTheme.byBrightness(
          light: context.appThemeExt.appColors.grey.value,
          dark: context.appThemeExt.appColors.darkGrey.value,
        );
  }

  Color _iconColor(BuildContext context) {
    return _HomePageBottomNavBarItem.iconColor(
      context: context,
      isSelected: viewModel.currentHomePageTab == tab,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Tooltip(
          message: tab.title,
          child: IconButton(
            onPressed: () => viewModel.onTabPressed(tab),
            color: _iconColor(context),
            icon: icon,
          ),
        );
      },
    );
  }
}
