part of '../home_page_imports.dart';

class _HomePageBody extends StatefulWidget {
  const _HomePageBody({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  State<_HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<_HomePageBody>
    with AutomaticKeepAliveClientMixin {
  final PentaEventBus<void> _refreshEvent = PentaEventBus<void>();

  Future<void> _onRefresh() async {
    widget.viewModel.fetchFeaturedApodList();
    _refreshEvent.fire(null);
  }

  @override
  void dispose() {
    _refreshEvent.destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator.adaptive(
      onRefresh: _onRefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppDoubleValues.xl.extSizedbox.height,
            SizedBox(
              height: 300,
              child: _HomePageFeaturedCarousel(viewModel: widget.viewModel),
            ),
            AppDoubleValues.xl.extSizedbox.height,
            ...HomePageLibraries.values
                .map(
                  (e) => _HomePageLibrary(
                    library: e,
                    refreshEvent: _refreshEvent,
                    viewModel: widget.viewModel,
                  ),
                )
                .expand(
                  (element) => [element, AppDoubleValues.xl.extSizedbox.height],
                )
                .toList()
              ..removeLast(),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
