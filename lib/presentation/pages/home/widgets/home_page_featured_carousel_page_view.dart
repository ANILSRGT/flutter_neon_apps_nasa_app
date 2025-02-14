part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageView extends StatelessWidget {
  const _HomePageFeaturedCarouselPageView();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return PageView(
          onPageChanged: _viewModel.setFeaturedPageIndex,
          controller: _viewModel.featuredPageController,
          children:
              _viewModel.featuredApodList.status == FutureStatus.pending
                  ? [
                    ClipRRect(
                      borderRadius: AppDoubleValues.lg.extRadius.border.all,
                      child: Shimmer.fromColors(
                        baseColor: context.appThemeExt.appColors.grey.value,
                        highlightColor:
                            context.appThemeExt.appColors.lightGrey.value,
                      ),
                    ),
                  ]
                  : (_viewModel.featuredApodList.value == null ||
                      _viewModel.featuredApodList.value!.isEmpty)
                  ? [const _HomePageFeaturedCarouselPageViewItem(model: null)]
                  : _viewModel.featuredApodList.value!
                      .map(
                        (e) => _HomePageFeaturedCarouselPageViewItem(model: e),
                      )
                      .toList(),
        );
      },
    );
  }
}
