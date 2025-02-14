part of 'home_page_imports.dart';

class _HomePageView extends StatelessWidget {
  const _HomePageView();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:
          context.appThemeExt.appColors.background
              .byBrightness(context.extTheme.isDark)
              .value,
      child: const SafeArea(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: _HomePageBottomNavBar(),
          appBar: _HomePageAppBar(),
          body: _HomePageBodyPageView(),
        ),
      ),
    );
  }
}
