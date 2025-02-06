part of 'explore_page_imports.dart';

final _viewModel = ExplorePageViewModel();

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ExplorePageView();
  }
}
