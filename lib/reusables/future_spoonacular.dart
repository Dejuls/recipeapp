// import 'package:recipeapp/models/spoon_model.dart';
// //
// // // class RecipeService {
// // //   // Use your actual key here
// // //   final String apiKey = 'd0b387818c1d497d82f337cc8e8890ae';
// //
// // //   // Fetch 50 random recipes from the API
// // //   Future<List<Recipes>> fetchRandomRecipes(int number) async {
// // //     final url = Uri.parse('https://api.spoonacular.com/recipes/random?number=$number&apiKey=$apiKey');
// //
// // //     final response = await http.get(url);
// //
// // //     if (response.statusCode == 200) {
// // //       final data = json.decode(response.body);
// // //       final List recipesJson = data['recipes'];
// //
// // //       // Convert each recipe JSON to a Recipe object
// // //       return recipesJson.map((recipeJson) => Recipe.fromJson(recipeJson)).toList();
// // //     } else {
// // //       throw Exception('Failed to load recipes');
// // //     }
// // //   }
// // // }
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// //
// // // Assuming the models are in this file
// //
// // // Fetch 50 recipes
// // Future<Recipe> fetchRecipes() async {
// //
// //   //final url = Uri.parse();
// //
// //     final response = await http.get(Uri.parse('https://api.spoonacular.com/recipes/random?number=1&apiKey=d0b387818c1d497d82f337cc8e8890ae'));
// //
// //     if (response.statusCode == 200) {
// //       // Parse the JSON response and return a Recipe object
// //       final Map<String, dynamic> data = json.decode(response.body);
// //       return Recipe.fromJson(data);
// //     } else {
// //      throw Exception('Failed to load recipes. Status Code: ${response.statusCode}');
// //
// //     }
// //   //catch (e) {
// //     //print('Error fetching recipes: $e');
// //     //return null;
// //   }
// //
// class SpoonacularService {
//   //final String apiKey = 'd0b387818c1d497d82f337cc8e8890ae';

//   Future<SpoonStuff> getRandomRecipes(int number) async {
//     final response = await http.get(Uri.parse(
//         'https://api.spoonacular.com/recipes/random?apiKey=d0b387818c1d497d82f337cc8e8890ae&number=$number'));

//     if (response.statusCode == 200) {
//       return SpoonStuff.fromJson(json.decode(response.body));
//       //final data = jsonDecode(response.body);
//       //final recipes = data['recipes'] as List; // Assuming 'recipes' is the key
//       //  return recipes.map((recipeJson) => Recipe.fromJson(recipeJson)).toList();
//     } else {
//       throw 
class Recipes {
  final int id;
  final String title;
  final String image;
   int? readyInMinutes;
   int? servings;
   double? spoonacularScore;
   List<String>? dishTypes;
   List<String>? cuisines;
   List<String>? diets;
   List<Ingredient>? extendedIngredients;
   List<Instruction>? analyzedInstructions;

  Recipes({
    required this.id,
    required this.title,
    required this.image,
     this.readyInMinutes,
     this.servings,
    this.spoonacularScore,
    this.dishTypes,
    this.cuisines,
    this.diets,
     this.extendedIngredients, this.analyzedInstructions,
  });

  factory Recipes.fromJson(Map<String, dynamic> json) {
    return Recipes(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      readyInMinutes: json['readyInMinutes'],
      servings: json['servings'],
      spoonacularScore: json['spoonacularScore'].toDouble(),
      dishTypes: List<String>.from(json['dishTypes'] ?? []),
      cuisines: List<String>.from(json['cuisines'] ?? []),
      diets: List<String>.from(json['diets'] ?? []),
      extendedIngredients: (json['extendedIngredients'] as List)
          .map((i) => Ingredient.fromJson(i))
          .toList(),
      analyzedInstructions: (json['analyzedInstructions'] as List)
          .map((i) => Instruction.fromJson(i))
          .toList(),
    );
  }
}

class Ingredient {
  final int id;
  final String name;
  final double amount;
  final String unit;
  final String original;

  Ingredient({
    required this.id,
    required this.name,
    required this.amount,
    required this.unit,
    required this.original,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      id: json['id'],
      name: json['name'],
      amount: json['amount'].toDouble(),
      unit: json['unit'],
      original: json['original'],
    );
  }
}

class Instruction {
  final String name;
  final List<Steps> steps;

  Instruction({required this.name, required this.steps});

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
      name: json['name'],
      steps: (json['steps'] as List).map((s) => Steps.fromJson(s)).toList(),
    );
  }
}

class Steps {
  final int number;
  final String step;
  final List<Ingredient> ingredients;

  Steps({
    required this.number,
    required this.step,
    required this.ingredients,
  });

  factory Steps.fromJson(Map<String, dynamic> json) {
    return Steps(
      number: json['number'],
      step: json['step'],
      ingredients: (json['ingredients'] as List)
          .map((i) => Ingredient.fromJson(i))
          .toList(),
    );
  }
}
