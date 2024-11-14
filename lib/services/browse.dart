// import 'package:recipeapp/models/filter_model.dart';
// import 'package:recipeapp/models/recipe_model.dart';

// class SearchService {
//    List<dynamic> results = [];
//   SearchService(
//       {required List<MealType> mtype,
//       required List<DietRest> dietrest,
//       required List<Level> levo,
//       required List<Prep> prep,
//       required List<Recipe> cipe}) {
//     results.addAll(dietrest);
//     results.addAll(mtype);
//     results.addAll(levo);
//     results.addAll(cipe);
//     results.addAll(prep);
//   }
//   List<dynamic> deepSearch(String searchTerm) {
//     return results.where((item) {
//       if (item is MealType) {
//         return item.name.toLowerCase().contains(searchTerm.toLowerCase());
//       } else if (item is DietRest) {
//         return item.name.toLowerCase().contains(searchTerm.toLowerCase());
//       } else if (item is Level) {
//         return item.name.toLowerCase().contains(searchTerm.toLowerCase());
//       } else if (item is Prep) {
//         return item.name.toLowerCase().contains(searchTerm.toLowerCase());
//       }
//       if (item is Recipe) {
//         return item.name.toLowerCase().contains(searchTerm.toLowerCase()) ||
//             item.author.toLowerCase().contains(searchTerm.toLowerCase()) ||
//             item.category.toLowerCase().contains(searchTerm.toLowerCase()) ||
//             item.country.toLowerCase().contains(searchTerm.toLowerCase()) ||
//             item.description.toLowerCase().contains(searchTerm.toLowerCase());
//       }
//       return false;
//     }).toList();
//   }
// }

// Function to search through all lists in the application

import 'package:recipeapp/models/more_recipes.dart';

List<MoreRecipes> searchAllLists(List<List<MoreRecipes>> allLists, String query) {
  query = query.toLowerCase();
  return allLists.expand((list) => list).where((item) =>
    item.name.toLowerCase().contains(query) ||
    item.category.toLowerCase().contains(query)
  ).toList();
}
