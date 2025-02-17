part of 'explore_page_imports.dart';

class _ExplorePageView extends StatelessWidget {
  const _ExplorePageView({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _ExplorePageBody(viewModel: viewModel));
  }
}
