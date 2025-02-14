part of '../library_details_page_imports.dart';

class _LibraryDetailsPageMedia extends StatelessWidget {
  const _LibraryDetailsPageMedia({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        return switch (libraryItem.mediaType) {
          NasaMediaTypes.video => VideoPlayerWidget(
            videoUrl: libraryItem.libraryCollection!.firstWhere(
              (e) => e.endsWith('small.mp4') || e.contains('youtube.com'),
            ),
          ),
          NasaMediaTypes.image => CustomCachedNetworkImage(
            imageUrl: libraryItem.libraryCollection!.firstWhere(
              (e) => e.endsWith('small.jpg'),
            ),
            fit: BoxFit.cover,
          ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
