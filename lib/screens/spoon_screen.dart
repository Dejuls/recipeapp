// // //
// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_animate/flutter_animate.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:recipeapp/reusables/future_spoonacular.dart';
// // import 'package:recipeapp/screens/recipedetails.dart';
// // import 'package:recipeapp/screens/spoon_detail.dart';

// // class SpoonScreen extends StatefulWidget {
// //   SpoonScreen({super.key});

// //   @override
// //   State<SpoonScreen> createState() => _SpoonScreenState();
// // }
// // class _SpoonScreenState extends State<SpoonScreen> {
// //   List<Recipes> recip = [];

// //   Future<List<Recipes>> getRecipes(int number) async {
// //     final response = await http.get(Uri.parse(
// //         'https://api.spoonacular.com/recipes/random?apiKey=d0b387818c1d497d82f337cc8e8890ae&number=$number'));

// //     if (response.statusCode == 200) {
// //       var recipes = jsonDecode(response.body);
// //       List<Recipes> fetchedRecipes = [];
// //       for (var _recipe in recipes['recipes']) {
// //         final recipe = Recipes(
// //           id: _recipe['id'],
// //           title: _recipe['title'],
// //           image: _recipe['image'],
// //         );
// //         fetchedRecipes.add(recipe);
// //       }
// //       return fetchedRecipes;
// //     } else {
// //       throw Exception('Failed to load recipes');
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FutureBuilder<List<Recipes>>(
// //           future: getRecipes(2),
// //           builder: (context, snapshot) {
// //             if (snapshot.connectionState == ConnectionState.waiting) {
// //               return Center(
// //                   child: Column(children: [
// //                 CircularProgressIndicator(),
// //                 Text('Fetching recipes.....')
// //               ]));
// //             } else if (snapshot.hasError) {
// //               return Center(child: Text('Error: ${snapshot.error}'));
// //             } else if (snapshot.hasData) {
// //               recip = snapshot.data!; // Assign the fetched recipes to recip
// //               return ListView.builder(
// //                   itemCount: recip.length,
// //                   itemBuilder: (context, index) {
// //                     var item = recip[index];
// //                     return Column(
// //                       children: [
// //                         GestureDetector(
// //                             onTap: () => Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                     builder: (_) =>
// //                                         RecipeDetailScreen(recipe: item))),
// //                             child: Container(
// //                               height: 200,
// //                               width: 400,
// //                               child:
// //                                   Image.network(item.image, fit: BoxFit.cover),
// //                             )),
// //                         Text(item.title)
// //                       ],
// //                     );
// //                   });
// //             }
// //             return Center(
// //               child: Text('No data available'),
// //             );
// //           }),
// //     );
// //   }
// // }

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:recipeapp/reusables/future_spoonacular.dart';
// import 'package:recipeapp/screens/recipedetails.dart';
// import 'package:recipeapp/screens/spoon_detail.dart';

// class SpoonScreen extends StatefulWidget {
//   SpoonScreen({super.key});

//   @override
//   State<SpoonScreen> createState() => _SpoonScreenState();
// }

// class _SpoonScreenState extends State<SpoonScreen> {
//   List<Recipes> recip = [];

//   Future<List<Recipes>> getRecipes(int number) async {
//     final response = await http.get(Uri.parse(
//         'https://api.spoonacular.com/recipes/random?apiKey=d0b387818c1d497d82f337cc8e8890ae&number=$number'));

//     if (response.statusCode == 200) {
//       var recipes = jsonDecode(response.body);
//       List<Recipes> fetchedRecipes = [];
//       for (var _recipe in recipes['recipes']) {
//         final recipe = Recipes(
//           id: _recipe['id'],
//           title: _recipe['title'],
//           image: _recipe['image'],
//         );
//         fetchedRecipes.add(recipe);
//       }
//       return fetchedRecipes;
//     } else {
//       throw Exception('Failed to load recipes');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<List<Recipes>>(
//         future: getRecipes(2),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircularProgressIndicator(),
//                   SizedBox(height: 10),
//                   Text('Fetching recipes.....'),
//                 ],
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             recip = snapshot.data!; // Assign the fetched recipes to recip
//             return ListView.builder(
//               itemCount: recip.length,
//               itemBuilder: (context, index) {
//                 var item = recip[index];
//                 return Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => RecipeDetailScreen(recipe: item),
//                         ),
//                       ),
//                       child: Container(
//                         height: 200,
//                         width: 400,
//                         child: NetworkImage(
//                           item.image,
//                           fit: BoxFit.cover,
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Center(
//                               child: CircularProgressIndicator(
//                                 value: loadingProgress.expectedTotalBytes !=
//                                         null
//                                     ? loadingProgress.cumulativeBytesLoaded /
//                                         loadingProgress.expectedTotalBytes!
//                                     : null,
//                               ),
//                             );
//                           },
//                           errorBuilder: (context, error, stackTrace) {
//                             return Center(
//                               child: Icon(
//                                 Icons.broken_image,
//                                 color: Colors.grey,
//                                 size: 50,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                     Text(item.title),
//                   ],
//                 );
//               },
//             );
//           }
//           return Center(child: Text('No data available'));
//         },
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:recipeapp/reusables/future_spoonacular.dart';
import 'package:recipeapp/screens/recipedetails.dart';
import 'package:recipeapp/screens/spoon_detail.dart';

class SpoonScreen extends StatefulWidget {
  SpoonScreen({super.key});

  @override
  State<SpoonScreen> createState() => _SpoonScreenState();
}

class _SpoonScreenState extends State<SpoonScreen> {
  List<Recipes> recip = [];

  Future<List<Recipes>> getRecipes(int number) async {
    final response = await http.get(Uri.parse(
        'https://api.spoonacular.com/recipes/random?apiKey=d0b387818c1d497d82f337cc8e8890ae&number=$number'));

    if (response.statusCode == 200) {
      var recipes = jsonDecode(response.body);
      List<Recipes> fetchedRecipes = [];
      for (var _recipe in recipes['recipes']) {
        final recipe = Recipes(
          id: _recipe['id'],
          title: _recipe['title'],
          image: _recipe['image'],
        );
        fetchedRecipes.add(recipe);
      }
      return fetchedRecipes;
    } else {
      throw Exception('Failed to load recipes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Recipes>>(
        future: getRecipes(2),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10),
                  Text('Fetching recipes.....'),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            recip = snapshot.data!; // Assign the fetched recipes to recip
            return ListView.builder(
              itemCount: recip.length,
              itemBuilder: (context, index) {
                var item = recip[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RecipeDetailScreen(recipe: item),
                        ),
                      ),
                      child: Container(
                        height: 200,
                        width: 400,
                        child: Image(
                          image: NetworkImage(
                            item.image,
                            // Example header if needed
                            headers: {
                              'Authorization': 'Bearer YOUR_TOKEN_HERE'
                            },
                          ),
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Icon(
                                Icons.broken_image,
                                color: Colors.grey,
                                size: 50,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Text(item.title),
                  ],
                );
              },
            );
          }
          return Center(child: Text('No data available'));
        },
      ),
    );
  }
}
