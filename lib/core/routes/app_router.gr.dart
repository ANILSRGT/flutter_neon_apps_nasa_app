// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

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
      return const HomePage();
    },
  );
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
