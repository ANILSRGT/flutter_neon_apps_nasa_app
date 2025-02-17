part of '../explore_page_imports.dart';

class _ExplorePageBody extends StatelessWidget {
  const _ExplorePageBody({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
        child: Column(
          children: [
            AppDoubleValues.xl.extSizedbox.height,
            _ExplorePageFilters(viewModel: viewModel),
            AppDoubleValues.md.extSizedbox.height,
            _ExplorePageResults(viewModel: viewModel),
          ],
        ),
      ),
    );
  }
}
