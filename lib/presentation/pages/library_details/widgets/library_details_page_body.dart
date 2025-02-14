part of '../library_details_page_imports.dart';

class _LibraryDetailsPageBody extends StatelessWidget {
  const _LibraryDetailsPageBody({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: Row(
                  spacing: AppDoubleValues.md.value,
                  children: [
                    if (context.router.canPop()) const BackButton(),
                    const Spacer(),
                    IconButton(
                      onPressed:
                          () => context
                              .read<NasaFavoriteLibraryNotifier>()
                              .toggleFavorite(libraryItem),
                      icon: const Icon(Icons.favorite_rounded),
                    ),
                  ],
                ),
              ),
              AppDoubleValues.xl2.extSizedbox.height,
              SizedBox(
                height: 200,
                child: _LibraryDetailsPageMedia(libraryItem: libraryItem),
              ),
              AppDoubleValues.xl2.extSizedbox.height,
              if (libraryItem.data != null)
                _LibraryDetailsPageDataItem(item: libraryItem.data!),
            ],
          ),
        ),
      ),
    );
  }
}
