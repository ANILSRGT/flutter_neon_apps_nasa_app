// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ApodDetailsPage]
class ApodDetailsRoute extends PageRouteInfo<ApodDetailsRouteArgs> {
  ApodDetailsRoute({
    required NasaApodModel apod,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ApodDetailsRoute.name,
         args: ApodDetailsRouteArgs(apod: apod, key: key),
         initialChildren: children,
       );

  static const String name = 'ApodDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ApodDetailsRouteArgs>();
      return ApodDetailsPage(apod: args.apod, key: args.key);
    },
  );
}

class ApodDetailsRouteArgs {
  const ApodDetailsRouteArgs({required this.apod, this.key});

  final NasaApodModel apod;

  final Key? key;

  @override
  String toString() {
    return 'ApodDetailsRouteArgs{apod: $apod, key: $key}';
  }
}

/// generated route for
/// [ExplorePage]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute({List<PageRouteInfo>? children})
    : super(ExploreRoute.name, initialChildren: children);

  static const String name = 'ExploreRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ExplorePage();
    },
  );
}

/// generated route for
/// [FavoritesPage]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritesPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return HomePage();
    },
  );
}

/// generated route for
/// [LibraryCategoryPage]
class LibraryCategoryRoute extends PageRouteInfo<LibraryCategoryRouteArgs> {
  LibraryCategoryRoute({
    required String category,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         LibraryCategoryRoute.name,
         args: LibraryCategoryRouteArgs(category: category, key: key),
         initialChildren: children,
       );

  static const String name = 'LibraryCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LibraryCategoryRouteArgs>();
      return LibraryCategoryPage(category: args.category, key: args.key);
    },
  );
}

class LibraryCategoryRouteArgs {
  const LibraryCategoryRouteArgs({required this.category, this.key});

  final String category;

  final Key? key;

  @override
  String toString() {
    return 'LibraryCategoryRouteArgs{category: $category, key: $key}';
  }
}

/// generated route for
/// [LibraryDetailsPage]
class LibraryDetailsRoute extends PageRouteInfo<LibraryDetailsRouteArgs> {
  LibraryDetailsRoute({
    required NasaLibraryItemModel libraryItem,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         LibraryDetailsRoute.name,
         args: LibraryDetailsRouteArgs(libraryItem: libraryItem, key: key),
         initialChildren: children,
       );

  static const String name = 'LibraryDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LibraryDetailsRouteArgs>();
      return LibraryDetailsPage(libraryItem: args.libraryItem, key: args.key);
    },
  );
}

class LibraryDetailsRouteArgs {
  const LibraryDetailsRouteArgs({required this.libraryItem, this.key});

  final NasaLibraryItemModel libraryItem;

  final Key? key;

  @override
  String toString() {
    return 'LibraryDetailsRouteArgs{libraryItem: $libraryItem, key: $key}';
  }
}

/// generated route for
/// [MarsPage]
class MarsRoute extends PageRouteInfo<void> {
  const MarsRoute({List<PageRouteInfo>? children})
    : super(MarsRoute.name, initialChildren: children);

  static const String name = 'MarsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MarsPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
