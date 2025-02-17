part of '../../home_page_imports.dart';

class _HomePageBottomNavBar extends StatelessWidget {
  const _HomePageBottomNavBar({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDoubleValues.xl.extPadding.all,
      padding: AppDoubleValues.sm.extPadding.all,
      decoration: BoxDecoration(
        color:
            context.appThemeExt.appColors.background
                .byBrightness(context.extTheme.isDark)
                .onColor,
        borderRadius: AppDoubleValues.xl.extRadius.border.all,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _HomePageBottomNavBarItem(
            viewModel: viewModel,
            tab: HomePageTabs.home,
            icon: const Icon(Icons.home_rounded),
          ),
          _HomePageBottomNavBarItem(
            viewModel: viewModel,
            tab: HomePageTabs.explore,
            icon: const Icon(Icons.explore_rounded),
          ),
          _HomePageBottomNavBarItem(
            viewModel: viewModel,
            tab: HomePageTabs.favorites,
            icon: const Icon(Icons.favorite_rounded),
          ),
          _HomePageBottomNavBarItem(
            tab: HomePageTabs.mars,
            viewModel: viewModel,
            icon: Observer(
              builder: (_) {
                return SvgPicture(
                  SvgAssetLoader(
                    AppVectors.marsIcon,
                    colorMapper: AppVectors.marsIconColorMapper(
                      _HomePageBottomNavBarItem.iconColor(
                        context: context,
                        isSelected:
                            viewModel.currentHomePageTab == HomePageTabs.mars,
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
