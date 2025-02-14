part of '../home_page_imports.dart';

class _HomePageFeaturedCarouselPageViewItem extends StatelessWidget {
  const _HomePageFeaturedCarouselPageViewItem({required this.model});

  final NasaApodModel? model;

  @override
  Widget build(BuildContext context) {
    return model != null
        ? GestureDetector(
          onTap: () => context.router.push(ApodDetailsRoute(apod: model!)),
          child: TitleCard(
            title: model!.title ?? '',
            background:
                model?.mediaType == 'image'
                    ? CustomCachedNetworkImage(
                      imageUrl: model!.url ?? '',
                      fit: BoxFit.cover,
                    )
                    : VideoPlayerThumbnailWidget(videoUrl: model!.url ?? ''),
          ),
        )
        : TitleCard.noData();
  }
}
