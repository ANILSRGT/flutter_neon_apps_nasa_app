part of '../../home_page_imports.dart';

class _HomePageLibraryHeader extends StatelessWidget {
  const _HomePageLibraryHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TitleText(title: title);
  }
}
