import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/models/mealbd_model.dart';

class MyCookingGuide extends StatelessWidget {
  final Meals meal;
  const MyCookingGuide({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(meal.strMealThumb ?? ''),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width - 10,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        meal.strMeal ?? '',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 6, right: 6),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Origin: ' + meal.strArea!,
                          textScaler: TextScaler.linear(1.3),
                          style: TextStyle(color: Colors.grey[800])),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          for (int i = 1; i < 6; ++i)
                            Icon(
                              Icons.star_outlined,
                              color: Colors.grey[900],
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text('Author: ' + meal.strSource!,
                      //       maxLines: 2,
                      //       overflow: TextOverflow.ellipsis,
                      //       textScaler: TextScaler.linear(1.2),
                      //       style: TextStyle(
                      //         color: Colors.grey[500],
                      //       )),
                      // ),
                      Text('Category: ' + meal.strCategory!,
                          textScaler: TextScaler.linear(1.3),
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: meal.ingredients!.map((ingredient) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ingredient.name ?? '',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(
                          width: 25,
                        ),
                        Text(ingredient.measure ?? '',
                            style: TextStyle(fontSize: 16, color: Colors.amber))
                      ],
                    );
                  }).toList()),
            ),
            Container(
              margin: EdgeInsets.only(left: 6, right: 6),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Procedure',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text('${meal.strInstructions}\n',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
