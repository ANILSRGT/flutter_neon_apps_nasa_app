part of '../../home_page_imports.dart';

class _HomePageFeaturedCarouselPageView extends StatelessWidget {
  const _HomePageFeaturedCarouselPageView({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return PageView(
          onPageChanged: viewModel.setFeaturedPageIndex,
          controller: viewModel.featuredPageController,
          children:
              viewModel.featuredApodList.status == FutureStatus.pending
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
                  : (viewModel.featuredApodList.value == null ||
                      viewModel.featuredApodList.value!.isEmpty)
                  ? [const _HomePageFeaturedCarouselPageViewItem(model: null)]
                  : viewModel.featuredApodList.value!
                      .map(
                        (e) => _HomePageFeaturedCarouselPageViewItem(model: e),
                      )
                      .toList(),
        );
      },
    );
  }
}
