part of 'library_category_page_imports.dart';

@RoutePage()
class LibraryCategoryPage extends StatelessWidget {
  LibraryCategoryPage({required this.category, super.key});

  final String category;

  final _viewModel = LibraryCategoryPageViewModel();

  @override
  Widget build(BuildContext context) {
    return _LibraryCategoryPageView(category: category, viewModel: _viewModel);
  }
}
