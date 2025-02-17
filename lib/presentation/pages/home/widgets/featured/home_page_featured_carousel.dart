part of '../../home_page_imports.dart';

class _HomePageFeaturedCarousel extends StatefulWidget {
  const _HomePageFeaturedCarousel({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  State<_HomePageFeaturedCarousel> createState() =>
      _HomePageFeaturedCarouselState();
}

class _HomePageFeaturedCarouselState extends State<_HomePageFeaturedCarousel> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.viewModel.fetchFeaturedApodList();
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
          Expanded(
            child: _HomePageFeaturedCarouselPageView(
              viewModel: widget.viewModel,
            ),
          ),
          AppDoubleValues.md.extSizedbox.height,
          _HomePageFeaturedCarouselPageViewDots(viewModel: widget.viewModel),
        ],
      ),
    );
  }
}
