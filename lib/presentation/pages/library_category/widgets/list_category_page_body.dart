part of '../library_category_page_imports.dart';

class _ListCategoryPageBody extends StatelessWidget {
  const _ListCategoryPageBody({
    required this.category,
    required this.viewModel,
  });

  final String category;
  final LibraryCategoryPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _ListCategoryPageLibraries(
        category: category,
        viewModel: viewModel,
      ),
    );
  }
}
