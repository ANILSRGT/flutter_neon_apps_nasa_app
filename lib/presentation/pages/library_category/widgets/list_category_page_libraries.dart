part of '../library_category_page_imports.dart';

class _ListCategoryPageLibraries extends StatefulWidget {
  const _ListCategoryPageLibraries({
    required this.category,
    required this.viewModel,
  });

  final String category;
  final LibraryCategoryPageViewModel viewModel;

  @override
  State<_ListCategoryPageLibraries> createState() =>
      _ListCategoryPageLibrariesState();
}

class _ListCategoryPageLibrariesState
    extends State<_ListCategoryPageLibraries> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    widget.viewModel.fetchLibraryItems(category: widget.category);
    _scrollController.addListener(checkScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(checkScroll)
      ..dispose();
    super.dispose();
  }

  void checkScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        widget.viewModel.libraryItems.isNotEmpty &&
        !widget.viewModel.isLoading) {
      widget.viewModel.nextPage(category: widget.category);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return (widget.viewModel.isLoading && widget.viewModel.page == 1)
            ? LayoutBuilder(
              builder: (_, cst) {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cst.maxWidth ~/ 180,
                    crossAxisSpacing: AppDoubleValues.md.value,
                    mainAxisSpacing: AppDoubleValues.md.value,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (_, index) {
                    return ClipRRect(
                      borderRadius: AppDoubleValues.md.extRadius.border.all,
                      child: Shimmer.fromColors(
                        baseColor: context.appThemeExt.appColors.grey.value,
                        highlightColor:
                            context.appThemeExt.appColors.lightGrey.value,
                      ),
                    );
                  },
                );
              },
            )
            : widget.viewModel.libraryItems.isEmpty
            ? const Center(child: Text('- No results found -'))
            : SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LayoutBuilder(
                    builder: (_, cst) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.viewModel.libraryItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: cst.maxWidth ~/ 180,
                          crossAxisSpacing: AppDoubleValues.md.value,
                          mainAxisSpacing: AppDoubleValues.md.value,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) {
                          final item = widget.viewModel.libraryItems[index];
                          return LibraryItemCard(model: item);
                        },
                      );
                    },
                  ),
                  if (widget.viewModel.isLoading)
                    LayoutBuilder(
                      builder: (_, cst) {
                        return GridView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: cst.maxWidth ~/ 180,
                                crossAxisSpacing: AppDoubleValues.md.value,
                                mainAxisSpacing: AppDoubleValues.md.value,
                                childAspectRatio: 1.2,
                              ),
                          itemBuilder: (_, index) {
                            return ClipRRect(
                              borderRadius:
                                  AppDoubleValues.md.extRadius.border.all,
                              child: Shimmer.fromColors(
                                baseColor:
                                    context.appThemeExt.appColors.grey.value,
                                highlightColor:
                                    context
                                        .appThemeExt
                                        .appColors
                                        .lightGrey
                                        .value,
                              ),
                            );
                          },
                        );
                      },
                    ),
                ],
              ),
            );
      },
    );
  }
}
