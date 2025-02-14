part of '../home_page_imports.dart';

class _HomePageBody extends StatefulWidget {
  const _HomePageBody();

  @override
  State<_HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<_HomePageBody>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        _viewModel.fetchFeaturedApodList();
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppDoubleValues.xl.extSizedbox.height,
            const SizedBox(height: 300, child: _HomePageFeaturedCarousel()),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
