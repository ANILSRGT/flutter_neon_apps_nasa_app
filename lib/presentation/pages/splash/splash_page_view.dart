part of 'splash_page_imports.dart';

class _SplashPageView extends StatefulWidget {
  const _SplashPageView();

  @override
  State<_SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<_SplashPageView>
    with _SplashPageViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, cst) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppDoubleValues.xl4.extSizedbox.height,
                  const Spacer(),
                  SizedBox.square(
                    dimension: cst.extScreen.byOrientation(
                      landscape: cst.maxHeight * 0.5,
                      portrait: cst.maxWidth * 0.5,
                    ),
                    child: const AppLogo(),
                  ),
                  const Spacer(),
                  SizedBox.square(
                    dimension: cst.extScreen.byOrientation(
                      landscape:
                          max(cst.maxHeight * 0.1, AppDoubleValues.xl3.value),
                      portrait:
                          max(cst.maxWidth * 0.1, AppDoubleValues.xl3.value),
                    ),
                    child: const AppIndicator(),
                  ),
                  AppDoubleValues.xl4.extSizedbox.height,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
