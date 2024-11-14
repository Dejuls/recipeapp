
import 'package:flutter/material.dart';
import 'package:recipeapp/models/mealbd_model.dart';
import 'package:recipeapp/reusables/cooking.dart';
import 'package:recipeapp/reusables/meal_db_future.dart';

class MealDbGrid extends StatefulWidget {
  MealDbGrid({super.key});

  @override
  State<MealDbGrid> createState() => _MealDbGridState();
}

class _MealDbGridState extends State<MealDbGrid> {
  late Future<List<Meals>> futureMeals;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAllMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[200],
      // appBar: AppBar(
      //   title: Text('All Categories'),
      //   centerTitle: true,
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: FutureBuilder<MealDb>(
            future: fetchAllMeals(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.amber,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: snapshot.data!.meals!.length,
                    itemBuilder: (context, index) {
                      Meals meal = snapshot.data!.meals![index];
                      return MyCookingGuide(meal: meal);
                    });
              }
              return Container();
            }),
      ),
    );
  }
}
