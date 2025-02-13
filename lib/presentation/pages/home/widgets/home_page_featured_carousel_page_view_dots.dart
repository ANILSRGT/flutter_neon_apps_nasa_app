part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewDots extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewDots();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return PageDots(
          currentPage: _viewModel.featuredPageIndex,
          pageCount: dummyNasaApodEntities.length,
          onPageSelected: _viewModel.onFeaturedPageSelected,
        );
      },
    );
  }
}
