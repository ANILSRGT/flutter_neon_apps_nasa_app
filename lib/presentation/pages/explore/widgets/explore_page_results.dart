part of '../explore_page_imports.dart';

class _ExplorePageResults extends StatelessWidget {
  const _ExplorePageResults({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final items = viewModel.nasaLibraryFuture;

        if (items.status == FutureStatus.pending) {
          return const GridViewShimmer(aspectRatio: 1.2, count: 10);
        }

        final itemsValue = items.value;

        if (itemsValue == null) {
          return const Center(child: Text('- No results found -'));
        }

        return LayoutBuilder(
          builder: (_, cst) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemsValue.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: cst.maxWidth ~/ 180,
                crossAxisSpacing: AppDoubleValues.md.value,
                mainAxisSpacing: AppDoubleValues.md.value,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                final item = itemsValue[index];
                return _ExplorePageResultsItem(item: item);
              },
            );
          },
        );
      },
    );
  }
}
