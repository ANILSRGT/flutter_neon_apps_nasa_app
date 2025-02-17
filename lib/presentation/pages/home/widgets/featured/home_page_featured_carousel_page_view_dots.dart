part of '../../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewDots extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewDots({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final length = viewModel.featuredApodList.value?.length ?? 1;
        return PageDots(
          currentPage: viewModel.featuredPageIndex,
          pageCount: length <= 0 ? 1 : length,
          onPageSelected: viewModel.onFeaturedPageSelected,
          selectedColor: context.extTheme.byBrightness(
            light: context.appThemeExt.appColors.black.light.value,
            dark: context.appThemeExt.appColors.white.light.value,
          ),
          unselectedColor: context.extTheme.byBrightness(
            light: context.appThemeExt.appColors.grey.value,
            dark: context.appThemeExt.appColors.grey.value,
          ),
        );
      },
    );
  }
}
