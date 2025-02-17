part of 'home_page_imports.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _viewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    return _HomePageView(viewModel: _viewModel);
  }
}
