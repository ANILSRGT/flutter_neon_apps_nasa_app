import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/library/nasa_library_get_favorites_usecase.dart';
import 'package:neon_apps_nasa_app/domains/usecases/nasa/library/nasa_library_toggle_favorite_usecase.dart';
import 'package:neon_apps_nasa_app/injections/injection_imports.dart';

final class NasaFavoriteLibraryNotifier extends ChangeNotifier {
  final List<NasaLibraryItemModel> _favorites = [];

  List<NasaLibraryItemModel> get favorites => _favorites;

  void loadFavorites() {
    _favorites.clear();
    final favs = Injection.I.read<NasaLibraryGetFavoritesUseCase>().execute();
    _favorites.addAll(favs);
    notifyListeners();
  }

  Future<void> toggleFavorite(NasaLibraryItemModel model) async {
    await Injection.I.read<NasaLibraryToggleFavoriteUseCase>().execute(model);
    loadFavorites();
  }
}
