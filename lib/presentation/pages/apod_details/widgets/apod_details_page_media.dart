part of '../apod_details_page_imports.dart';

class _ApodDetailsPageMedia extends StatelessWidget {
  const _ApodDetailsPageMedia({required this.apod});

  final NasaApodModel apod;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        final link = apod.url ?? '';
        final mediaType = NasaMediaTypes.fromString(apod.mediaType ?? '');
        return apod.url != null
            ? mediaType == NasaMediaTypes.video
                ? VideoPlayerWidget(videoUrl: link)
                : mediaType == NasaMediaTypes.image
                ? Hero(
                  tag: apod.url ?? '',
                  child: CustomCachedNetworkImage(
                    imageUrl: link,
                    fit: BoxFit.cover,
                  ),
                )
                : const SizedBox.shrink()
            : const SizedBox.shrink();
      },
    );
  }
}
