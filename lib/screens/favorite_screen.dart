// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:recipeapp/models/for_favorites.dart';
// import 'package:recipeapp/models/more_recipes.dart';
// import 'package:recipeapp/models/spices.dart';

// class FavoriteScreen extends StatelessWidget {
//   const FavoriteScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ForFavorites>(
//       builder: (context, favoritesProvider, child) {
//         final favorites = favoritesProvider.favorites;

//         return Scaffold(
//           backgroundColor: Theme.of(context).colorScheme.surface,
//           appBar: AppBar(
//             title: const Text('Your Favorites'),
//             actions: [
//               IconButton(
//                 icon: Icon(Icons.delete_forever_rounded, color: Colors.red[300]),
//                 onPressed: () => favoritesProvider.favorites.clear(),
//               ),
//             ],
//           ),
//           body: favorites.isEmpty
//               ? const Center(
//                   child: Text('List is empty...', style: TextStyle(fontSize: 20)),
//                 )
//               : ListView.builder(
//                   itemCount: favorites.length,
//                   itemBuilder: (context, index) {
//                     final item = favorites[index];

//                     // Check the item type and display accordingly.
//                     final String name = item is MoreRecipes
//                         ? item.name
//                         : (item as Ingredient).name;
//                     final String imageUrl = item is MoreRecipes
//                         ? item.imgUrl
//                         : item.imgUrl; // Adjust if Ingredient has a different image attribute.

//                     return Container(
//                       padding: const EdgeInsets.all(10),
//                       margin: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).colorScheme.tertiary,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: imageUrl.isNotEmpty
//                                 ? Image.asset(imageUrl, height: 90, width: 100, fit: BoxFit.cover)
//                                 : Container(height: 90, width: 100, color: Colors.grey),
//                           ),
//                           const SizedBox(width: 18),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   name,
//                                   style: TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Theme.of(context).colorScheme.inversePrimary,
//                                   ),
//                                 ),
//                                 if (item is MoreRecipes)
//                                   Text(item.category ?? '',
//                                       style: TextStyle(fontSize: 18, color: Colors.grey[600])),
//                               ],
//                             ),
//                           ),
//                           IconButton(
//                             icon: Icon(CupertinoIcons.delete, color: Colors.red[300]),
//                             onPressed: () => favoritesProvider.toggleFavorite(item),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//         );
//       },
//     );
//   }
// }

// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:recipeapp/models/for_favorites.dart';

// // class FavoriteScreen extends StatefulWidget {
// //   const FavoriteScreen({super.key});

// //   @override
// //   State<FavoriteScreen> createState() => _FavoriteScreenState();
// // }

// // class _FavoriteScreenState extends State<FavoriteScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Consumer<ForFavorites>(
// //       builder: (context, favorites, child) {
// //         final _favorites = favorites.favorites;
// //         final _spices = favorites.ingredients;
// //         return Scaffold(
// //             backgroundColor: Theme.of(context).colorScheme.surface,
// //             appBar: AppBar(
// //               actions: [
// //                 IconButton(
// //                     onPressed: () {
// //                       showDialog(
// //                           context: context,
// //                           builder: (_) => AlertDialog(
// //                                 title: Text('Clear entire list'),
// //                                 content: Text(
// //                                   'Are you sure you want to clear list?',
// //                                   style: TextStyle(fontSize: 18),
// //                                 ),
// //                                 actions: [
// //                                   Row(
// //                                     mainAxisAlignment:
// //                                         MainAxisAlignment.spaceAround,
// //                                     children: [
// //                                       MaterialButton(
// //                                         shape: RoundedRectangleBorder(
// //                                             borderRadius:
// //                                                 BorderRadius.circular(20)),
// //                                         color: Colors.redAccent,
// //                                         textColor: Theme.of(context)
// //                                             .colorScheme
// //                                             .secondary,
// //                                         onPressed: () => Navigator.pop(context),
// //                                         child: Text('No'),
// //                                       ),
// //                                       MaterialButton(
// //                                         shape: RoundedRectangleBorder(
// //                                             borderRadius:
// //                                                 BorderRadius.circular(20)),
// //                                         color: Colors.lightBlueAccent,
// //                                         textColor: Theme.of(context)
// //                                             .colorScheme
// //                                             .secondary,
// //                                         onPressed: () {
// //                                           Navigator.pop(context);
// //                                           _favorites.clear();
// //                                         },
// //                                         child: Text('Sure'),
// //                                       ),
// //                                     ],
// //                                   )
// //                                 ],
// //                               ));
// //                     },
// //                     icon: Icon(
// //                       Icons.delete_forever_rounded,
// //                       color: Colors.red[300],
// //                       size: 34,
// //                     ))
// //               ],
// //               backgroundColor: Theme.of(context).colorScheme.surface,
// //               title: Text(
// //                 'Your Favorites',
// //                 style: TextStyle(
// //                     fontSize: 23,
// //                     letterSpacing: 2.3,
// //                     color: Theme.of(context).colorScheme.tertiary,
// //                     fontWeight: FontWeight.bold),
// //               ),
// //             ),
// //             body: _favorites.isEmpty||_spices.isEmpty
// //                 ? Center(
// //                     child: Text(
// //                       'List is empty...',
// //                       style: TextStyle(fontSize: 20),
// //                     ),
// //                   )
// //                 : Column(
// //                     children: [
// //                       Expanded(
// //                           child: ListView.builder(
// //                               itemCount: _favorites.isEmpty? _spices.length:_favorites.length,
// //                               itemBuilder: (context, index) {
// //                                 final faves = _favorites[index];
// //                                    final spices= _spices[index];
// //                              return Container(
// //                                     padding: EdgeInsets.all(10),
// //                                     margin: EdgeInsets.only(
// //                                         top: 4, left: 10, right: 10),
// //                                     decoration: BoxDecoration(
// //                                         color: Theme.of(context)
// //                                             .colorScheme
// //                                             .tertiaryFixed,
// //                                         borderRadius: BorderRadius.circular(20),
// //                                         border: Border.all(
// //                                             color: Theme.of(context)
// //                                                 .colorScheme
// //                                                 .inversePrimary,
// //                                             width: .7)),
// //                                     child: Column(
// //                                       children: [
// //                                         Row(
// //                                           children: [
// //                                             ClipRRect(
// //                                               borderRadius:
// //                                                   BorderRadius.circular(20),
// //                                               child: faves.imgUrl.isNotEmpty||spices.imgUrl.isNotEmpty
// //                                                   ? Image.asset(
// //                                                       faves.imgUrl.isEmpty?spices.imgUrl:faves.imgUrl,
// //                                                       fit: BoxFit.cover,
// //                                                       height: 90,
// //                                                       width: 100,
// //                                                     )
// //                                                   : Container(
// //                                                       height: 90,
// //                                                       width: 100,
// //                                                       color: Theme.of(context)
// //                                                           .colorScheme
// //                                                           .tertiary,
// //                                                     ),
// //                                             ),
// //                                             SizedBox(
// //                                               width: 18,
// //                                             ),
// //                                             Container(
// //                                               width: 240,
// //                                               padding: EdgeInsets.all(8),
// //                                               // decoration: BoxDecoration(
// //                                               //     border: Border.all(
// //                                               //         color: Theme.of(context)
// //                                               //             .colorScheme
// //                                               //             .surface,
// //                                               //         width: 2)
// //                                               //         ),
// //                                               child: Column(
// //                                                 crossAxisAlignment:
// //                                                     CrossAxisAlignment.start,
// //                                                 children: [
// //                                                   Text(
// //                                                     faves.name.isEmpty?spices.name:faves.name,
// //                                                     style: TextStyle(
// //                                                         fontSize: 22,
// //                                                         color: Theme.of(context)
// //                                                             .colorScheme
// //                                                             .inversePrimary,
// //                                                         fontWeight:
// //                                                             FontWeight.bold),
// //                                                   ),
// //                                                   Text(
// //                                                     faves.category,
// //                                                     style: TextStyle(
// //                                                         fontSize: 20,
// //                                                         color: Colors.grey[600],
// //                                                         fontWeight:
// //                                                             FontWeight.w500),
// //                                                   ),
// //                                                   Text(
// //                                                     faves.cuisine!,
// //                                                     style: TextStyle(
// //                                                         fontSize: 18,
// //                                                         color: Colors.grey[500],
// //                                                         fontWeight:
// //                                                             FontWeight.w400),
// //                                                   ),
// //                                                 ],
// //                                               ),
// //                                             ),
// //                                             IconButton(
// //                                                 onPressed: () {
// //                                         _spices.isEmpty?          favorites.favorites
// //                                                       .removeAt(index):favorites.ingredients.removeAt(index);
// //                                                 },
// //                                                 icon: Icon(
// //                                                   CupertinoIcons.delete,
// //                                                   color: Colors.red[300],
// //                                                   size: 26,
// //                                                 ))
// //                                           ],
// //                                         )
// //                                       ],
// //                                     ));
// //                               }))
// //                     ],
// //                   ));
// //       },
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/for_favorites.dart';
import 'package:recipeapp/models/more_recipes.dart';
import 'package:recipeapp/models/spices.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ForFavorites>(
      builder: (context, favoritesProvider, child) {
        final favorites = favoritesProvider.favorites;

        return Scaffold(
          backgroundColor: const Color(0xFFF8F9FA),
          appBar: AppBar(
            title: const Text(
              'Your Favorites',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF343A40)),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_sweep,
                    color: Color(0xFFFF6B6B), size: 24),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Clear All Favorites'),
                        content: const Text(
                            'Are you sure you want to remove all favorites?'),
                        actions: [
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          TextButton(
                            child: const Text('Clear'),
                            onPressed: () {
                              favoritesProvider.favorites.clear();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
          body: favorites.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_border,
                          size: 64, color: Color(0xFFCCCCCC)),
                      SizedBox(height: 16),
                      Text(
                        'No favorites yet',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFADB5BD)),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final item = favorites[index];
                    return Dismissible(
                      key: Key(item.name),
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        color: const Color(0xFFFF6B6B),
                        child: const Icon(Icons.delete_outline,
                            color: Colors.white),
                      ),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        favoritesProvider.toggleFavorite(item);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('${item.name} removed from favorites'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                favoritesProvider.toggleFavorite(item);
                              },
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                              child: Image.asset(
                                item.imgUrl,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF343A40),
                                      ),
                                    ),
                                    if (item is MoreRecipes &&
                                        item.category != null)
                                      Text(
                                        item.category!,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF6C757D)),
                                      ),
                                    if (item is MoreRecipes &&
                                        item.cuisine != null)
                                      Text(
                                        item.cuisine!,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF6C757D),
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    if (item is Ingredient)
                                      Text(
                                        item.regionUsed,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF6C757D)),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star,
                                        size: 16, color: Color(0xFFFFD700)),
                                    const SizedBox(width: 4),
                                    Text(
                                      (item.cumulativeRating / item.ratingCount)
                                          .toStringAsFixed(1),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF343A40),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
