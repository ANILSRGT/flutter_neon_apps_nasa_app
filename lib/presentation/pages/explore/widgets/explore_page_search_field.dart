part of '../explore_page_imports.dart';

class _ExplorePageSearchField extends StatelessWidget {
  const _ExplorePageSearchField();

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: _viewModel.searchController,
      hint: 'Search',
      prefixIcon: const Icon(Icons.search),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onChanged: _viewModel.onChangedSearch,
    );
  }
}
