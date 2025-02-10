part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageView extends StatelessWidget {
  const _HomePageFeaturedCarouselPageView();

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: _viewModel.setFeaturedPageIndex,
      controller: _viewModel.featuredPageController,
      children: dummyNasaApodEntities
          .map((e) => _HomePageFeaturedCarouselPageViewItem(nasaApodEntity: e))
          .toList(),
    );
  }
}
