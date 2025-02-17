part of '../mars_page_imports.dart';

class _MarsPageSearchButton extends StatelessWidget {
  const _MarsPageSearchButton({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ElevatedButton(
          onPressed:
              viewModel.roverPhotos.status == FutureStatus.pending
                  ? null
                  : viewModel.exploreRoverPhotos,
          child: const Text('Explore'),
        );
      },
    );
  }
}
