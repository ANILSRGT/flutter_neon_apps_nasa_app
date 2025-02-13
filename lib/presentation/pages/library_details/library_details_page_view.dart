part of 'library_details_page_imports.dart';

class _LibraryDetailsPageView extends StatelessWidget {
  const _LibraryDetailsPageView({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDoubleValues.xl.extPadding.symmetric.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
                child: _LibraryDetailsPageMedia(libraryItem: libraryItem),
              ),
              AppDoubleValues.xl2.extSizedbox.height,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: libraryItem.data?.length ?? 0,
                itemBuilder: (_, index) {
                  final item = libraryItem.data![index];
                  return _LibraryDetailsPageDataItem(item: item);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
