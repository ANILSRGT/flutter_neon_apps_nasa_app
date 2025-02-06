part of '../home_page_imports.dart';

class _HomePageBottomNavBar extends StatelessWidget {
  const _HomePageBottomNavBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDoubleValues.xl.extPadding.all,
      padding: AppDoubleValues.sm.extPadding.all,
      decoration: BoxDecoration(
        color: context.appThemeExt.appColors.background
            .byBrightness(context.extTheme.isDark)
            .onColor,
        borderRadius: AppDoubleValues.xl.extRadius.border.all,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const _HomePageBottomNavBarItem(
            tab: HomePageTabs.home,
            icon: Icon(Icons.home_rounded),
          ),
          const _HomePageBottomNavBarItem(
            tab: HomePageTabs.explore,
            icon: Icon(Icons.explore_rounded),
          ),
          const _HomePageBottomNavBarItem(
            tab: HomePageTabs.favorites,
            icon: Icon(Icons.favorite_rounded),
          ),
          _HomePageBottomNavBarItem(
            tab: HomePageTabs.mars,
            icon: Observer(
              builder: (_) {
                return SvgPicture(
                  SvgAssetLoader(
                    AppVectors.marsIcon,
                    colorMapper: AppVectors.marsIconColorMapper(
                      _HomePageBottomNavBarItem.iconColor(
                        HomePageTabs.mars,
                        context,
                      ),
                    ),
                  ),
                  width: 32,
                  height: 32,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
