part of '../explore_page_imports.dart';

class _ExplorePageFiltersContent extends StatelessWidget {
  const _ExplorePageFiltersContent({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return AnimatedVisibility(
          duration: Durations.medium4,
          visible: viewModel.isFilterVisible,
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
                  _ExplorePageFiltersContentMediaTypeField(
                    viewModel: viewModel,
                  ),
                  Row(
                    spacing: AppDoubleValues.md.value,
                    children: [
                      Expanded(
                        child: _ExplorePageFiltersContentYearFromField(
                          viewModel: viewModel,
                        ),
                      ),
                      Expanded(
                        child: _ExplorePageFiltersContentYearToField(
                          viewModel: viewModel,
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
    );
  }
}
