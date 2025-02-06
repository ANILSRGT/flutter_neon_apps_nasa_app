part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageView extends StatelessWidget {
  const _HomePageFeaturedCarouselPageView();

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: _viewModel.setFeaturedPageIndex,
      controller: _viewModel.featuredPageController,
      children: List.generate(
        3,
        (index) {
          return TitleCard(
            title: 'Title $index',
            background: Image.network(
              'https://picsum.photos/200/300?random=$index',
              fit: BoxFit.cover,
              loadingBuilder: (_, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Shimmer.fromColors(
                  baseColor: context.appThemeExt.appColors.grey.value,
                  highlightColor: context.appThemeExt.appColors.lightGrey.value,
                );
              },
              errorBuilder: (_, __, ___) {
                return LayoutBuilder(
                  builder: (_, cst) {
                    return ColoredBox(
                      color: context.appThemeExt.appColors.grey.value,
                      child: Icon(
                        Icons.photo_library_rounded,
                        color: context.appThemeExt.appColors.lightGrey.value,
                        size: cst.extScreen.byOrientation(
                          landscape: cst.maxHeight * 0.2,
                          portrait: cst.maxWidth * 0.2,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
