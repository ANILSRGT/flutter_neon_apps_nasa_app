part of '../mars_page_imports.dart';

class _MarsPageRoverPhotos extends StatelessWidget {
  const _MarsPageRoverPhotos({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final roverPhotos = viewModel.roverPhotos;

        if (roverPhotos.status == FutureStatus.pending) {
          return LayoutBuilder(
            builder: (_, cst) {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: cst.maxWidth ~/ 180,
                  crossAxisSpacing: AppDoubleValues.md.value,
                  mainAxisSpacing: AppDoubleValues.md.value,
                  childAspectRatio: 0.8,
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
          );
        }

        final data = roverPhotos.value;

        if (data == null || data.isEmpty) {
          return const Center(child: Text('- No photos found -'));
        }

        final limitedRoverPhotos = data.take(20);

        return LayoutBuilder(
          builder: (_, cst) {
            return GridView.builder(
              cacheExtent: 1000,
              shrinkWrap: true,
              itemCount: limitedRoverPhotos.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: cst.maxWidth ~/ 180,
                crossAxisSpacing: AppDoubleValues.md.value,
                mainAxisSpacing: AppDoubleValues.md.value,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (_, index) {
                final model = limitedRoverPhotos.elementAt(index);
                return RoverCard(model: model);
              },
            );
          },
        );
      },
    );
  }
}
