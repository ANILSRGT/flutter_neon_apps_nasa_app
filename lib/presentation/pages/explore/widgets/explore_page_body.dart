part of '../explore_page_imports.dart';

class _ExplorePageBody extends StatelessWidget {
  const _ExplorePageBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
        child: Column(
          children: [
            AppDoubleValues.xl.extSizedbox.height,
            const _ExplorePageFilters(),
          ],
        ),
      ),
    );
  }
}
