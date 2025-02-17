part of '../../home_page_imports.dart';

class _HomePageLibrary extends StatefulWidget {
  const _HomePageLibrary({
    required this.library,
    required this.viewModel,
    this.refreshEvent,
  });

  final HomePageViewModel viewModel;
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
      widget.viewModel.refreshLibraryList();
    });
    widget.viewModel.fetchLibraryList(widget.library);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDoubleValues.lg.extPadding.symmetric.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppDoubleValues.md.value,
            children: [
              _HomePageLibraryHeader(title: widget.library.title),
              _HomePageLibrarySeeAll(category: widget.library.title),
            ],
          ),
          AppDoubleValues.md.extSizedbox.height,
          _HomePageLibraryItems(
            library: widget.library,
            viewModel: widget.viewModel,
          ),
        ],
      ),
    );
  }
}
