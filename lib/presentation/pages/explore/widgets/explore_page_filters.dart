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
                  onPressed: _viewModel.toggleFilterVisibility,
                  style: IconButton.styleFrom(
                    backgroundColor:
                        context.appThemeExt.appColors.primary.value,
                    foregroundColor:
                        context.appThemeExt.appColors.primary.onColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: AppDoubleValues.md.extRadius.border.all,
                    ),
                  ),
                  icon: const Icon(Icons.filter_list),
                ),
              ),
            ],
          ),
        ),
        if (_viewModel.isFilterVisible) AppDoubleValues.md.extSizedbox.height,
        Observer(
          builder: (_) {
            return AnimatedVisibility(
              duration: Durations.medium4,
              visible: _viewModel.isFilterVisible,
              child: Card(
                color: context.appThemeExt.appColors.background
                    .byBrightness(context.extTheme.isDark)
                    .value,
                child: Padding(
                  padding: AppDoubleValues.md.extPadding.all,
                  child: Column(
                    spacing: AppDoubleValues.md.value,
                    children: [
                      CustomInputField(
                        controller: _viewModel.searchController,
                        hint: 'Image Type',
                        prefixIcon: const Icon(Icons.photo_library_rounded),
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        onTap: () {},
                        textInputAction: TextInputAction.none,
                      ),
                      Row(
                        spacing: AppDoubleValues.md.value,
                        children: [
                          Expanded(
                            child: CustomInputField(
                              controller: _viewModel.searchController,
                              hint: 'Year From',
                              prefixIcon: const Icon(Icons.date_range_rounded),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.none,
                            ),
                          ),
                          Expanded(
                            child: CustomInputField(
                              controller: _viewModel.searchController,
                              hint: 'Year To',
                              prefixIcon: const Icon(Icons.date_range_rounded),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.none,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        AppDoubleValues.md.extSizedbox.height,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppDoubleValues.md.value,
            mainAxisSpacing: AppDoubleValues.md.value,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return const Card();
          },
        ),
      ],
    );
  }
}
