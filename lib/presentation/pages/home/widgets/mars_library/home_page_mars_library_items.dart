part of '../../home_page_imports.dart';

class _HomePageMarsLibraryItems extends StatelessWidget {
  const _HomePageMarsLibraryItems();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                (_viewModel.marsLibraryList.status == FutureStatus.pending
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
                        : _viewModel.marsLibraryList.value == null
                        ? [const Text('No data')]
                        : List.generate(
                          _viewModel.marsLibraryList.value!.length,
                          (index) {
                            return SizedBox.square(
                              dimension: 160,
                              child: LibraryItemCard(
                                model: _viewModel.marsLibraryList.value![index],
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
