part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentYearToField extends StatelessWidget {
  const _ExplorePageFiltersContentYearToField();

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      controller: _viewModel.yearToController,
      hint: 'Year To',
      prefixIcon: const Icon(Icons.date_range_rounded),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      textInputAction: TextInputAction.none,
    );
  }
}
