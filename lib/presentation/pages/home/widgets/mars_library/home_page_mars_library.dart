part of '../../home_page_imports.dart';

class _HomePageMarsLibrary extends StatefulWidget {
  const _HomePageMarsLibrary();

  @override
  State<_HomePageMarsLibrary> createState() => _HomePageMarsLibraryState();
}

class _HomePageMarsLibraryState extends State<_HomePageMarsLibrary> {
  @override
  void initState() {
    super.initState();
    _viewModel.fetchMarsLibraryList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.lg.extPadding.symmetric.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _HomePageMarsLibraryHeader(),
          AppDoubleValues.md.extSizedbox.height,
          const _HomePageMarsLibraryItems(),
        ],
      ),
    );
  }
}
