part of '../../home_page_imports.dart';

class _HomePageLibraryItems extends StatelessWidget {
  const _HomePageLibraryItems({required this.library, required this.viewModel});

  final HomePageLibraries library;
  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                (viewModel.libraryList[library]?.status == FutureStatus.pending
                        ? List.generate(
                          3,
                          (_) => SizedBox.square(
                            dimension: 160,
                            child: ClipRRect(
                              borderRadius:
                                  AppDoubleValues.lg.extRadius.border.all,
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
                            ),
                          ),
                        )
                        : viewModel.libraryList[library]?.value == null ||
                            viewModel.libraryList[library]!.value!.isEmpty
                        ? [const Text('- No data -')]
                        : List.generate(
                          viewModel.libraryList[library]!.value!.length,
                          (index) {
                            return SizedBox.square(
                              dimension: 160,
                              child: LibraryItemCard(
                                model:
                                    viewModel
                                        .libraryList[library]!
                                        .value![index],
                              ),
                            );
                          },
                        ))
                    .expand(
                      (element) => [
                        element,
                        AppDoubleValues.sm.extSizedbox.width,
                      ],
                    )
                    .toList()
                  ..removeLast(),
          ),
        );
      },
    );
  }
}
