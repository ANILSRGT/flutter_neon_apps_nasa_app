part of '../favorites_page_imports.dart';

class _FavoritesPageFavorites extends StatelessWidget {
  const _FavoritesPageFavorites();

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<NasaFavoriteLibraryNotifier>().favorites;
    return LayoutBuilder(
      builder: (_, cst) {
        return GridView.builder(
          itemCount: favorites.length,
          padding: AppDoubleValues.md.extPadding.symmetric.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: cst.maxWidth ~/ 180,
            crossAxisSpacing: AppDoubleValues.md.value,
            mainAxisSpacing: AppDoubleValues.md.value,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            final item = favorites[index];
            return _FavoritesPageFavoritesItem(item: item);
          },
        );
      },
    );
  }
}
