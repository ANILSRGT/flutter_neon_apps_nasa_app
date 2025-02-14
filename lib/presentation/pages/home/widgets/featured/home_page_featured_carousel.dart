part of '../../home_page_imports.dart';

class _HomePageFeaturedCarousel extends StatefulWidget {
  const _HomePageFeaturedCarousel();

  @override
  State<_HomePageFeaturedCarousel> createState() =>
      _HomePageFeaturedCarouselState();
}

class _HomePageFeaturedCarouselState extends State<_HomePageFeaturedCarousel> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _viewModel.fetchFeaturedApodList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.lg.extPadding.symmetric.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _HomePageFeaturedHeader(),
          AppDoubleValues.md.extSizedbox.height,
          const Expanded(child: _HomePageFeaturedCarouselPageView()),
          AppDoubleValues.md.extSizedbox.height,
          const _HomePageFeaturedCarouselPageViewDots(),
        ],
      ),
    );
  }
}
