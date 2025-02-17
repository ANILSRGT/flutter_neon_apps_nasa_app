part of '../home_page_imports.dart';

enum HomePageTabs {
  home(title: 'NASA'),
  explore(title: 'Explore'),
  favorites(title: 'Favorites'),
  mars(title: 'Mars');

  const HomePageTabs({required this.title});

  final String title;

  static HomePageTabs changeTab(int index) {
    return HomePageTabs.values[index < 0
        ? 0
        : index > HomePageTabs.values.length - 1
        ? HomePageTabs.values.length - 1
        : index];
  }

  Widget page(Widget home) {
    switch (this) {
      case HomePageTabs.home:
        return home;
      case HomePageTabs.explore:
        return const ExplorePage();
      case HomePageTabs.favorites:
        return const FavoritesPage();
      case HomePageTabs.mars:
        return const MarsPage();
    }
  }
}
