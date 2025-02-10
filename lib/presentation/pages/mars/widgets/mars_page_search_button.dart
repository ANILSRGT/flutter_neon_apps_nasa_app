part of '../mars_page_imports.dart';

class _MarsPageSearchButton extends StatelessWidget {
  const _MarsPageSearchButton();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ElevatedButton(
          onPressed: _viewModel.roverPhotos.status == FutureStatus.pending
              ? null
              : _viewModel.exploreRoverPhotos,
          child: const Text('Explore'),
        );
      },
    );
  }
}
