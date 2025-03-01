part of '../explore_page_imports.dart';

class _ExplorePageFilterButton extends StatelessWidget {
  const _ExplorePageFilterButton({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: IconButton(
        onPressed: viewModel.toggleFilterVisibility,
        style: IconButton.styleFrom(
          backgroundColor: context.appThemeExt.appColors.primary.value,
          foregroundColor: context.appThemeExt.appColors.primary.onColor,
          shape: RoundedRectangleBorder(
            borderRadius: AppDoubleValues.md.extRadius.border.all,
          ),
        ),
        icon: const Icon(Icons.filter_list),
      ),
    );
  }
}
