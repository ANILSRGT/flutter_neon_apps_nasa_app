part of '../library_details_page_imports.dart';

class _LibraryDetailsPageMedia extends StatelessWidget {
  const _LibraryDetailsPageMedia({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        final url = libraryItem.mediaUrl;
        return switch (libraryItem.mediaType) {
          NasaMediaTypes.video => VideoPlayerWidget(videoUrl: url),
          NasaMediaTypes.image => CustomCachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.cover,
          ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
