part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentApplyButton extends StatelessWidget {
  const _ExplorePageFiltersContentApplyButton();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ElevatedButton(
          onPressed:
              _viewModel.nasaLibraryFuture.status == FutureStatus.pending
                  ? null
                  : _viewModel.fetchNasaLibraryItems,
          child: const Text('Research'),
        );
      },
    );
  }
}
