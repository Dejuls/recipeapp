import 'package:flutter/material.dart';
import 'package:recipeapp/models/mealbd_model.dart';

class InterRecipes extends StatelessWidget {
  final Meals meal;

  const InterRecipes({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // color: Colors.red,
          width: 120,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  meal.strMealThumb!,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 120,
                ),
              ),
              Positioned(
                  left: 50,
                  top: 50,
                  right: 0,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.bar_chart_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4' + 'k',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              meal.strMeal!,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
            // Text(
            //   recipo.author + ',' + ' ' + recipo.country,
            //   style: TextStyle(fontSize: 16),
            // ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  meal.strCategory!,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.amber[400],
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'F r e e',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
