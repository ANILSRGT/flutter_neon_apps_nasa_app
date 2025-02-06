part of '../home_page_imports.dart';

class _HomePageBodyPageView extends StatelessWidget {
  const _HomePageBodyPageView();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _viewModel.bottomNavPageController,
      itemCount: HomePageTabs.values.length,
      onPageChanged: (index) {
        _viewModel.changeHomePageTab(HomePageTabs.changeTab(index));
      },
      itemBuilder: (_, index) {
        return HomePageTabs.changeTab(index).page;
      },
    );
  }
}
