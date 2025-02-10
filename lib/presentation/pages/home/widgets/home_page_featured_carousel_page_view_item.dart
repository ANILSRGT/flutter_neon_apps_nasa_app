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
      background: CustomCachedNetworkImage(
        imageUrl: nasaApodEntity.url ?? '',
        fit: BoxFit.cover,
      ),
    );
  }
}
