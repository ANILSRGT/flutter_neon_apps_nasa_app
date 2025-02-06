part of 'mars_page_imports.dart';

final _viewModel = MarsPageViewModel();

@RoutePage()
class MarsPage extends StatelessWidget {
  const MarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MarsPageView();
  }
}
