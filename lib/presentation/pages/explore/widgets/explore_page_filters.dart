part of '../explore_page_imports.dart';

class _ExplorePageFilters extends StatelessWidget {
  const _ExplorePageFilters({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(child: _ExplorePageSearchField(viewModel: viewModel)),
              AppDoubleValues.md.extSizedbox.width,
              _ExplorePageFilterButton(viewModel: viewModel),
            ],
          ),
        ),
        if (viewModel.isFilterVisible) AppDoubleValues.md.extSizedbox.height,
        _ExplorePageFiltersContent(viewModel: viewModel),
        SizedBox(
          width: double.infinity,
          child: _ExplorePageFiltersContentApplyButton(viewModel: viewModel),
        ),
      ],
    );
  }
}
