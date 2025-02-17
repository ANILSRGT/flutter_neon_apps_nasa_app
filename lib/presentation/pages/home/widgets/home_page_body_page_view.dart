part of '../home_page_imports.dart';

class _HomePageBodyPageView extends StatelessWidget {
  const _HomePageBodyPageView({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: viewModel.bottomNavPageController,
      itemCount: HomePageTabs.values.length,
      onPageChanged: (index) {
        viewModel.changeHomePageTab(HomePageTabs.changeTab(index));
      },
      itemBuilder: (_, index) {
        return HomePageTabs.changeTab(
          index,
        ).page(_HomePageBody(viewModel: viewModel));
      },
    );
  }
}
