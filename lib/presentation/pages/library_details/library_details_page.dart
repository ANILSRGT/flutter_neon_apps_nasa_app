part of 'library_details_page_imports.dart';

@RoutePage()
class LibraryDetailsPage extends StatelessWidget {
  const LibraryDetailsPage({required this.libraryItem, super.key});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return _LibraryDetailsPageView(libraryItem: libraryItem);
  }
}
