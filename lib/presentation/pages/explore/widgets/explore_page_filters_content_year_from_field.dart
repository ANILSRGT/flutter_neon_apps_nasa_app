part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentYearFromField extends StatelessWidget {
  const _ExplorePageFiltersContentYearFromField();

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: _viewModel.yearFromController,
      hint: 'Year From',
      prefixIcon: const Icon(Icons.date_range_rounded),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      textInputAction: TextInputAction.none,
    );
  }
}
