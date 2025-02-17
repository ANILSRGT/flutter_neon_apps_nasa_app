part of '../explore_page_imports.dart';

class _ExplorePageFiltersContent extends StatelessWidget {
  const _ExplorePageFiltersContent();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return AnimatedVisibility(
          duration: Durations.medium4,
          visible: _viewModel.isFilterVisible,
          child: Card(
            color:
                context.appThemeExt.appColors.background
                    .byBrightness(context.extTheme.isDark)
                    .value,
            child: Padding(
              padding: AppDoubleValues.md.extPadding.all,
              child: Column(
                spacing: AppDoubleValues.md.value,
                children: [
                  const _ExplorePageFiltersContentMediaTypeField(),
                  Row(
                    spacing: AppDoubleValues.md.value,
                    children: const [
                      Expanded(
                        child: _ExplorePageFiltersContentYearFromField(),
                      ),
                      Expanded(child: _ExplorePageFiltersContentYearToField()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
