part of '../home_page_imports.dart';

class _HomePageFeaturedCarousel extends StatelessWidget {
  const _HomePageFeaturedCarousel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.lg.extPadding.symmetric.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _HomePageFeaturedTitle(),
          AppDoubleValues.md.extSizedbox.height,
          const Expanded(child: _HomePageFeaturedCarouselPageView()),
          AppDoubleValues.md.extSizedbox.height,
          const _HomePageFeaturedCarouselPageViewDots(),
        ],
      ),
    );
  }
}
