part of '../../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewDots extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewDots();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final length = _viewModel.featuredApodList.value?.length ?? 1;
        return PageDots(
          currentPage: _viewModel.featuredPageIndex,
          pageCount: length <= 0 ? 1 : length,
          onPageSelected: _viewModel.onFeaturedPageSelected,
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
