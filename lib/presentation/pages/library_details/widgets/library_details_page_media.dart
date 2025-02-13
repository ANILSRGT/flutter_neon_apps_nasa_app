part of '../library_details_page_imports.dart';

class _LibraryDetailsPageMedia extends StatelessWidget {
  const _LibraryDetailsPageMedia({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        final link = switch (libraryItem.mediaType) {
          NasaLibraryMediaTypes.video => libraryItem.libraryCollection
              ?.firstWhere((e) => e.endsWith('small.mp4')),
          NasaLibraryMediaTypes.image => libraryItem.libraryCollection
              ?.firstWhere((e) => e.endsWith('small.jpg')),
          _ => '',
        };
        return link != null
            ? switch (libraryItem.mediaType) {
              NasaLibraryMediaTypes.video => VideoPlayerWidget(
                videoUrl: libraryItem.libraryCollection!.firstWhere(
                  (e) => e.endsWith('small.mp4'),
                ),
              ),
              NasaLibraryMediaTypes.image => CustomCachedNetworkImage(
                imageUrl: libraryItem.libraryCollection!.firstWhere(
                  (e) => e.endsWith('small.jpg'),
                ),
                fit: BoxFit.cover,
              ),
              _ => const SizedBox.shrink(),
            }
            : const SizedBox.shrink();
      },
    );
  }
}
