part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewDots extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewDots();

  void _onPageSelected(int index) {
    _viewModel.featuredPageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return PageDots(
          currentPage: _viewModel.featuredPageIndex,
          pageCount: 3,
          onPageSelected: _onPageSelected,
        );
      },
    );
  }
}
