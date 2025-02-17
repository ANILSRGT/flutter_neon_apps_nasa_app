part of 'mars_page_imports.dart';

@RoutePage()
class MarsPage extends StatefulWidget {
  const MarsPage({super.key});

  @override
  State<MarsPage> createState() => _MarsPageState();
}

class _MarsPageState extends State<MarsPage>
    with AutomaticKeepAliveClientMixin {
  final _viewModel = MarsPageViewModel();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _viewModel.exploreRoverPhotos();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _MarsPageView(viewModel: _viewModel);
  }

  @override
  bool get wantKeepAlive => true;
}
