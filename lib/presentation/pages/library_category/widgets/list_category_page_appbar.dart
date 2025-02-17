part of '../library_category_page_imports.dart';

class _ListCategoryPageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const _ListCategoryPageAppbar({required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(category), centerTitle: true);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
