part of 'home_page_imports.dart';

class _HomePageView extends StatelessWidget {
  const _HomePageView();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.appThemeExt.appColors.background
          .byBrightness(context.extTheme.isDark)
          .value,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Observer(
              builder: (context) {
                return CustomAppBar(
                  title: _viewModel.currentHomePageTab.title,
                );
              },
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: PageView.builder(
                  controller: _viewModel.bottomNavPageController,
                  itemCount: HomePageTabs.values.length,
                  onPageChanged: (index) {
                    _viewModel.changeHomePageTab(HomePageTabs.changeTab(index));
                  },
                  itemBuilder: (_, index) {
                    return HomePageTabs.changeTab(index).page;
                  },
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: _HomePageBottomNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
