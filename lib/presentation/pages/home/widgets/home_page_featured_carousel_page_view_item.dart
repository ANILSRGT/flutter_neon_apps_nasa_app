part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewItem extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewItem({
    required this.nasaApodEntity,
  });

  final NasaApodEntity nasaApodEntity;

  @override
  Widget build(BuildContext context) {
    return TitleCard(
      title: nasaApodEntity.title ?? '',
      background: Image.network(
        nasaApodEntity.url ?? '',
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
  }
}
