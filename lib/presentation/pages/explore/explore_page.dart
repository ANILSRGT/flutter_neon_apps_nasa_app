part of 'explore_page_imports.dart';

final _viewModel = ExplorePageViewModel();

@RoutePage()
class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin<ExplorePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _viewModel.fetchNasaLibraryItems();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _ExplorePageView();
  }

  @override
  bool get wantKeepAlive => true;
}
