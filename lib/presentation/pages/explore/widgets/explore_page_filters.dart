part of '../explore_page_imports.dart';

class _ExplorePageFilters extends StatelessWidget {
  const _ExplorePageFilters();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              const Expanded(child: _ExplorePageSearchField()),
              AppDoubleValues.md.extSizedbox.width,
              const _ExplorePageFilterButton(),
            ],
          ),
        ),
        if (_viewModel.isFilterVisible) AppDoubleValues.md.extSizedbox.height,
        const _ExplorePageFiltersContent(),
        AppDoubleValues.md.extSizedbox.height,
        const _ExplorePageResults(),
      ],
    );
  }
}
