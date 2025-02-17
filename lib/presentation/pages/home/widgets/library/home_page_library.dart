part of '../../home_page_imports.dart';

class _HomePageLibrary extends StatefulWidget {
  const _HomePageLibrary({required this.library, this.refreshEvent});

  final PentaEventBus<void>? refreshEvent;
  final HomePageLibraries library;

  @override
  State<_HomePageLibrary> createState() => _HomePageLibraryState();
}

class _HomePageLibraryState extends State<_HomePageLibrary> {
  @override
  void initState() {
    super.initState();
    widget.refreshEvent?.on.listen((_) {
      _viewModel.refreshLibraryList();
    });
    _viewModel.fetchLibraryList(widget.library);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.lg.extPadding.symmetric.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _HomePageLibraryHeader(title: widget.library.title),
          AppDoubleValues.md.extSizedbox.height,
          _HomePageLibraryItems(library: widget.library),
        ],
      ),
    );
  }
}
