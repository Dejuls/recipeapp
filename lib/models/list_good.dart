import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:recipeapp/models/more_recipes.dart';

class Itemonlist {
  MoreRecipes more;
  Itemonlist({required this.more});
}

class ListGood extends ChangeNotifier {
  List<Itemonlist> get listgood => _listgood;
  final List<Itemonlist> _listgood = [];
  void createDynamicList(MoreRecipes more) {
    Itemonlist? _list = _listgood.firstWhereOrNull((recipe) {
      bool isDaSame = recipe.more == more;
      return isDaSame;
    });
    if (_list == null) {
      _listgood.add(Itemonlist(more: more));
    } else {
      return null;
    }
    notifyListeners();
  }

  void removeRecipe(Itemonlist recipe) {
    int goodIndex = _listgood.indexOf(recipe);
    if (goodIndex != -1) {
      _listgood.removeAt(goodIndex);
    } else {
      return null;
    }
    notifyListeners();
  }

  int totalGoods() {
    return _listgood.length;
  }

  void wipe() {
    _listgood.clear();
    notifyListeners();
  }

  String theRist() {
    final list = StringBuffer();
    list.writeln('Check out your list!');
    list.writeln();
    list.writeln(DateTime.now());
    // list.writeln();
    list.writeln(
        '------------------------------------------------------------');

    list.writeln('-------------important Information--------------');
    list.writeln();
    for (final recipe in _listgood) {
      list.writeln(
          " ${recipe.more.category} x ${recipe.more.cuisine} x ${recipe.more.origin}");

      list.writeln('------------ingredients & measures-------------');
      list.writeln(
          '------------------------------------------------------------\n${recipe.more.ingredients.join('\n')}\n------------------------------------------------------------\n${recipe.more.measure.join('\n')}');
      list.writeln(
          '------------------------------------------------------------');
      list.writeln('Total Ingredients: ${recipe.more.ingredients.length}');
      list.writeln('Total measured ingredients: ${recipe.more.measure.length}');
      list.writeln(
          '------------------------------------------------------------');
    }
    list.writeln(
        'Price: NB Prices are always facuating depending on region and season, it\'s a good practice to always shop around.');

    list.writeln('-----------------------------------------------');
    list.writeln('The belly rules the mind');
    list.writeln('B U E N    P R O V E N C H O');

    return list.toString();
  }
}
