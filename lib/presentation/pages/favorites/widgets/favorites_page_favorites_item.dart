part of '../favorites_page_imports.dart';

class _FavoritesPageFavoritesItem extends StatelessWidget {
  const _FavoritesPageFavoritesItem({required this.item});

  final NasaLibraryItemModel item;

  @override
  Widget build(BuildContext context) {
    return LibraryItemCard(model: item);
  }
}
