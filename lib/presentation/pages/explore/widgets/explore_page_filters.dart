part of '../explore_page_imports.dart';

class _ExplorePageFilters extends StatelessWidget {
  const _ExplorePageFilters();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: CustomInputField(
              controller: _viewModel.searchController,
              hint: 'Search',
              prefixIcon: const Icon(Icons.search),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
            ),
          ),
          AppDoubleValues.md.extSizedbox.width,
          AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: context.appThemeExt.appColors.primary.value,
                foregroundColor: context.appThemeExt.appColors.primary.onColor,
                shape: RoundedRectangleBorder(
                  borderRadius: AppDoubleValues.md.extRadius.border.all,
                ),
              ),
              icon: const Icon(Icons.filter_list),
            ),
          ),
        ],
      ),
    );
  }
}
