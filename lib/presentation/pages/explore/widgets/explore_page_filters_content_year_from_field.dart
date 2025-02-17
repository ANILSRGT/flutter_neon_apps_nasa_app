part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentYearFromField extends StatelessWidget {
  const _ExplorePageFiltersContentYearFromField({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: viewModel.yearFromController,
      hint: 'Year From',
      prefixIcon: const Icon(Icons.date_range_rounded),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.none,
    );
  }
}
