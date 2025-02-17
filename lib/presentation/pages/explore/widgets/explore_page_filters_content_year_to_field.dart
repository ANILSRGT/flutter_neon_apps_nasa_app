part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentYearToField extends StatelessWidget {
  const _ExplorePageFiltersContentYearToField({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: viewModel.yearToController,
      hint: 'Year To',
      prefixIcon: const Icon(Icons.date_range_rounded),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.none,
    );
  }
}
