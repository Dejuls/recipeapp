import 'dart:convert';
import 'package:recipeapp/models/mealbd_model.dart';
import 'package:http/http.dart' as http;

Future<MealDb> fetchAllMeals() async {
  //List<Meals> mealList = [];
  //for (int i = 0; i < num; i++) {
    final response = await http
        .get(Uri.parse('https://themealdb.com/api/json/v1/1/random.php'));
    if (response.statusCode == 200) {
      //final jsonData = json.decode(response.body);

      // mealDb = MealDb.fromJson(jsonData);
      return MealDb.fromJson(json.decode(response.body));
      //mealList.add(mealDb.meals!.first);
      //List<Meals> meals =
        //  jsonData['meals'].map((meal) => Meals.fromJson(meal)).toList();
      //return meals;
    } else {
      throw Exception('P o t e y a');
    }
 // }
  //return mealList;
}
