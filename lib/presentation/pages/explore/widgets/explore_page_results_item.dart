part of '../explore_page_imports.dart';

class _ExplorePageResultsItem extends StatelessWidget {
  const _ExplorePageResultsItem({
    required this.item,
  });

  final NasaLibraryItemModel item;

  @override
  Widget build(BuildContext context) {
    return LibraryItemCard(model: item);
  }
}
