part of 'explore_page_imports.dart';

@RoutePage()
class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin {
  final _viewModel = ExplorePageViewModel();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _viewModel.fetchNasaLibraryItems();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _ExplorePageView(viewModel: _viewModel);
  }

  @override
  bool get wantKeepAlive => true;
}
