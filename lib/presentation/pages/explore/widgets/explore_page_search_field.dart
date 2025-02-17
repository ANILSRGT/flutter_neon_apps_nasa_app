part of '../explore_page_imports.dart';

class _ExplorePageSearchField extends StatelessWidget {
  const _ExplorePageSearchField({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: viewModel.searchController,
      hint: 'Search',
      prefixIcon: const Icon(Icons.search),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onChanged: viewModel.onChangedSearch,
    );
  }
}
