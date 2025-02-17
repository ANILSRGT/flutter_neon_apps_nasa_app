part of 'library_category_page_imports.dart';

class _LibraryCategoryPageView extends StatelessWidget {
  const _LibraryCategoryPageView({
    required this.category,
    required this.viewModel,
  });

  final String category;
  final LibraryCategoryPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ListCategoryPageAppbar(category: category),
      body: _ListCategoryPageBody(category: category, viewModel: viewModel),
    );
  }
}
