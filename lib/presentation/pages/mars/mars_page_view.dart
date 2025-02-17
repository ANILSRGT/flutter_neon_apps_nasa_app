part of 'mars_page_imports.dart';

class _MarsPageView extends StatelessWidget {
  const _MarsPageView({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _MarsPageBody(viewModel: viewModel));
  }
}
