part of '../explore_page_imports.dart';

class _ExplorePageFiltersContentApplyButton extends StatelessWidget {
  const _ExplorePageFiltersContentApplyButton({required this.viewModel});

  final ExplorePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ElevatedButton(
          onPressed:
              viewModel.nasaLibraryFuture.status == FutureStatus.pending
                  ? null
                  : viewModel.fetchNasaLibraryItems,
          child: const Text('Research'),
        );
      },
    );
  }
}
