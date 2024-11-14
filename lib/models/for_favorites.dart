 import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';


class ForFavorites extends ChangeNotifier {
  final List<dynamic> _favorites = []; // Store different types in one list.

  List<dynamic> get favorites => _favorites;

  void toggleFavorite(dynamic item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
    } else {
      _favorites.add(item);
    }
    notifyListeners();
  }

  bool isFavorite(dynamic item) => _favorites.contains(item);

  static ForFavorites of(BuildContext context, {bool listen = true}) {
    return Provider.of<ForFavorites>(context, listen: listen);
  }
}


// class ForFavorites extends ChangeNotifier {
//   final List<MoreRecipes> _favorites = [];
//   List<MoreRecipes> get favorites => _favorites;
//   void favoriteState(MoreRecipes more) {
//     if (_favorites.contains(more)) {
//       _favorites.remove(more);
//     } else {
//       _favorites.add(more);
//     }
//     notifyListeners();
//   }

//   bool isFave(MoreRecipes more) {
//     final fave = _favorites.contains(more);
//     return fave;
//   }

//   final List<Ingredient> _ingredients = [];
//   List<Ingredient> get ingredients => _ingredients;
//   void favoriteSpice(Ingredient dient) {
//     if (_ingredients.contains(dient)) {
//       _ingredients.remove(dient);
//       notifyListeners();
//     } else {
//       _ingredients.add(dient);
//     }
//     notifyListeners();
//   }

//   bool isFav(Ingredient dient) {
//     final fave = _ingredients.contains(dient);
//     return fave;
//   }

//   static ForFavorites of(BuildContext context, {bool listen = true}) {
//     return Provider.of<ForFavorites>(context, listen: listen);
//   }
// }
