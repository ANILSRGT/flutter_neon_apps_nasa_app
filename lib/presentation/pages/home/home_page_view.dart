part of 'home_page_imports.dart';

class _HomePageView extends StatelessWidget {
  const _HomePageView({required this.viewModel});

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:
          context.appThemeExt.appColors.background
              .byBrightness(context.extTheme.isDark)
              .value,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: _HomePageBottomNavBar(viewModel: viewModel),
          appBar: _HomePageAppBar(viewModel: viewModel),
          body: _HomePageBodyPageView(viewModel: viewModel),
        ),
      ),
    );
  }
}
