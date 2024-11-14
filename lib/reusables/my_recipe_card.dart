import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:recipeapp/models/recipe_model.dart';

class MyRecipeCard extends StatelessWidget {
  final Recipe recipelist;
  const MyRecipeCard({super.key, required this.recipelist});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.tertiary,
      margin: EdgeInsets.only(left: 8, bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Hero(
                tag: recipelist.imgurl,
                transitionOnUserGestures: true,
                flightShuttleBuilder: (flightContext, animation,
                        flightDirection, fromHeroContext, toHeroContext) =>
                    Image.asset(recipelist.imgurl),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    recipelist.imgurl,
                    height: 180,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  left: 86,
                  top: 150,
                  bottom: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(3),
                    child: Text(
                      recipelist.category,
                      style: TextStyle(
                          letterSpacing: 2, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 3, right: 3),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.tertiary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      recipelist.name + ' ',
                      textScaler: TextScaler.linear(1.3),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(LineIcons.heartAlt)
                  ],
                ),
                Text(
                  'From: ' + recipelist.author,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.greenAccent,
                            ),
                            Text(
                              recipelist.country,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  letterSpacing: 2,
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.bar_chart_outlined),
                          Text(
                            ' ' + recipelist.ratings.toString() + '.00 k',
                            textScaler: TextScaler.linear(1.23),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Stack(
                //   children: [
                //     Text(recipelist.category),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
