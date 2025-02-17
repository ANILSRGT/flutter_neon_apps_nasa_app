part of '../../home_page_imports.dart';

class _HomePageLibrarySeeAll extends StatelessWidget {
  const _HomePageLibrarySeeAll({required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(LibraryCategoryRoute(category: category));
      },
      child: Row(
        spacing: AppDoubleValues.md.value,
        children: [
          const LabelText(title: 'See All'),
          Icon(Icons.chevron_right_rounded, size: AppDoubleValues.xl2.value),
        ],
      ),
    );
  }
}
