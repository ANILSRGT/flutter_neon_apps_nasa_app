part of 'splash_page_imports.dart';

mixin _SplashPageViewMixin on State<_SplashPageView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  Future<void> _init() async {
    if (mounted) await context.router.replace(const HomeRoute());
  }
}
