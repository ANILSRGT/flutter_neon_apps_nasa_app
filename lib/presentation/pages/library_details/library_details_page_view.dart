part of 'library_details_page_imports.dart';

class _LibraryDetailsPageView extends StatelessWidget {
  const _LibraryDetailsPageView({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _LibraryDetailsPageBody(libraryItem: libraryItem));
  }
}
