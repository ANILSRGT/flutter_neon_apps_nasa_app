part of '../home_page_imports.dart';

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppDoubleValues.xl.extSizedbox.height,
          const SizedBox(height: 300, child: _HomePageFeaturedCarousel()),
          const SizedBox(height: 100), //! For bottom nav bar
        ],
      ),
    );
  }
}
