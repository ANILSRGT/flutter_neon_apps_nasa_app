part of 'home_page_imports.dart';

final HomePageViewModel _viewModel = HomePageViewModel();

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomePageView();
  }
}
