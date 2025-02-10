part of 'mars_page_imports.dart';

final _viewModel = MarsPageViewModel();

@RoutePage()
class MarsPage extends StatefulWidget {
  const MarsPage({super.key});

  @override
  State<MarsPage> createState() => _MarsPageState();
}

class _MarsPageState extends State<MarsPage>
    with AutomaticKeepAliveClientMixin<MarsPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _viewModel.exploreRoverPhotos();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _MarsPageView();
  }

  @override
  bool get wantKeepAlive => true;
}
