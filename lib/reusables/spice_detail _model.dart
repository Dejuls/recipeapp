// // import 'package:flutter/material.dart';
// // import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// // import 'package:line_icons/line_icons.dart';
// // import 'package:recipeapp/models/for_favorites.dart';
// // import 'package:recipeapp/models/spices.dart';

// // // ignore: must_be_immutable
// // class SpiceDetailModel extends StatelessWidget {
// //   //final Object source;
// //   Ingredient dient;
// //   SpiceDetailModel({super.key, required this.dient});

// //   @override
// //   Widget build(BuildContext context) {
// //     final provider = ForFavorites.of(context);
// //     return Scaffold(
// //       backgroundColor: Theme.of(context).colorScheme.surface,
// //       appBar: AppBar(
// //         centerTitle: true,
// //         title: Text(
// //           'Spices Info',
// //           style: TextStyle(
// //               fontSize: 26, letterSpacing: 2.4, fontWeight: FontWeight.bold),
// //         ),
// //         actions: [
// //           IconButton(
// //             onPressed: () => provider.toggleFavorite(dient),
// //             icon: Icon(provider.isFavorite(dient)
// //                 ? Icons.favorite
// //                 : Icons.favorite_border_outlined),
// //             color: provider.isFavorite(dient)
// //                 ? Colors.redAccent
// //                 : Colors.grey[500],
// //             iconSize: 33,
// //           ),
// //         ],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           children: [
// //             Container(
// //               // alignment: Alignment.topCenter,
// //               height: MediaQuery.of(context).size.height / 2.3,
// //               width: MediaQuery.of(context).size.width,
// //               decoration: BoxDecoration(
// //                 image: DecorationImage(
// //                     image: AssetImage(dient.imgUrl), fit: BoxFit.cover),
// //               ),
// //               child: Padding(
// //                 padding: EdgeInsets.all(10),
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.end,
// //                   children: [
// //                     Container(
// //                       padding:
// //                           EdgeInsets.symmetric(horizontal: 6, vertical: 10),
// //                       decoration: BoxDecoration(
// //                           color: Colors.grey[900]!,
// //                           borderRadius: BorderRadius.circular(20)),
// //                       width: MediaQuery.of(context).size.width - 10,
// //                       margin: EdgeInsets.only(bottom: 10),
// //                       child: Center(
// //                         child: Text(
// //                           dient.name,
// //                           style: TextStyle(
// //                               letterSpacing: 2,
// //                               color: Colors.white,
// //                               fontSize: 24),
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               margin: EdgeInsets.only(left: 10, right: 10, top: 3),
// //               padding: EdgeInsets.all(8),
// //               decoration: BoxDecoration(
// //                   color: Theme.of(context).colorScheme.secondary,
// //                   border: Border(
// //                       bottom: BorderSide(
// //                           color: Theme.of(context).colorScheme.tertiary,
// //                           width: 4))),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   Text(
// //                     '\t\t\tLet us know how you feel, Rate this item',
// //                     style: TextStyle(
// //                         letterSpacing: 0,
// //                         fontSize: 21,
// //                         color: Colors.grey[600],
// //                         fontWeight: FontWeight.bold),
// //                   ),
// //                   SizedBox(
// //                     height: 20,
// //                   ),
// //                   Row(
// //                     children: [
// //                       RatingBar.builder(
// //                           itemPadding: EdgeInsets.only(left: 25),
// //                           glowColor: Theme.of(context).colorScheme.tertiary,
// //                           allowHalfRating: true,
// //                           itemSize: 30,
// //                           itemBuilder: (context, index) {
// //                             return Icon(
// //                               LineIcons.starAlt,
// //                             );
// //                           },
// //                           onRatingUpdate: (rating) {}),
// //                     ],
// //                   ),
// //                   SizedBox(
// //                     height: 20,
// //                   ),
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Row(
// //                         children: [
// //                           Container(
// //                             padding: EdgeInsets.all(20),
// //                             decoration: BoxDecoration(
// //                                 color: Theme.of(context).colorScheme.tertiary,
// //                                 borderRadius: BorderRadius.circular(20)),
// //                             child: Column(
// //                               children: [
// //                                 Text('Applications'.toUpperCase(),
// //                                     style: TextStyle(
// //                                         fontSize: 19,
// //                                         fontWeight: FontWeight.bold,
// //                                         color: Theme.of(context)
// //                                             .colorScheme
// //                                             .secondary)),
// //                                 SizedBox(
// //                                   width: 160,
// //                                   child: Text(
// //                                       '- ' + dient.appliedIn.join('\n- '),
// //                                       textScaler: TextScaler.linear(1.3),
// //                                       style: TextStyle(
// //                                           fontWeight: FontWeight.w700,
// //                                           color: Theme.of(context)
// //                                               .colorScheme
// //                                               .secondary)),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                           Container(
// //                             padding: EdgeInsets.all(20),
// //                             decoration: BoxDecoration(
// //                                 color: Theme.of(context).colorScheme.tertiary,
// //                                 borderRadius: BorderRadius.circular(20)),
// //                             child: SizedBox(
// //                                 width: 160,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       'region used'.toUpperCase(),
// //                                       style: TextStyle(
// //                                           fontWeight: FontWeight.bold,
// //                                           fontSize: 19),
// //                                     ),
// //                                     Text(dient.regionUsed,
// //                                         style: TextStyle(fontSize: 19)),
// //                                   ],
// //                                 )),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(
// //                     height: 20,
// //                   )
// //                 ],
// //               ),
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Container(
// //               margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),
// //               padding: EdgeInsets.all(10),
// //               decoration: BoxDecoration(
// //                   border: Border.all(
// //                       color: Theme.of(context).colorScheme.secondary),
// //                   color: Theme.of(context).colorScheme.secondary),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   SizedBox(
// //                     width: 10,
// //                   ),
// //                   Text('Description',
// //                       style:
// //                           TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
// //                   Text('${dient.description}', style: TextStyle(fontSize: 20)),
// //                 ],
// //               ),
// //             ),
// //             // SizedBox(
// //             //   height: 20,
// //             // )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:recipeapp/models/for_favorites.dart';
// import 'package:recipeapp/models/spices.dart';

// class SpiceDetails extends StatelessWidget {
//   // final String name;
//   // final String imageUrl;
//   // final List<String> applications;
//   // final List<String> regions;
//   // final String description;
//   // final double rating;
//   // final Function(double) onRatingUpdate;
//   // final VoidCallback onFavoritePressed;

//   final Ingredient ingredient;

//   const SpiceDetails({Key? key, required this.ingredient
//       //   required this.name,
//       //   required this.imageUrl,
//       //   required this.applications,
//       //   required this.regions,
//       //   required this.description,
//       //   this.rating = 0.0,
//       //   required this.onRatingUpdate,
//       //   required this.onFavoritePressed,
//       //   this.isFavorite = false,
//       })
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final provider = ForFavorites.of(context);
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 400,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Hero(
//                     tag: ingredient.name,
//                     child: Image.asset(
//                       ingredient.imgUrl,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.7),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 16,
//                     left: 16,
//                     right: 16,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 12,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Text(
//                         ingredient.name,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () => provider.toggleFavorite(ingredient),
//                 icon: Icon(provider.isFavorite(ingredient)
//                     ? Icons.favorite_rounded
//                     : Icons.favorite_rounded),
//                 color: provider.isFavorite(ingredient)
//                     ? Colors.redAccent
//                     : Colors.white,
//                 iconSize: 33,
//               ),
//             ],
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Let us know how you feel, Rate this item',
//                         style:
//                             Theme.of(context).textTheme.titleMedium?.copyWith(
//                                   color: Colors.grey[600],
//                                 ),
//                       ),
//                       const SizedBox(height: 12),
//                       Row(
//                         children: [
//                           RatingBar.builder(
//                             initialRating: ingredient.averageRating,
//                             minRating: 1,
//                             direction: Axis.horizontal,
//                             allowHalfRating: true,
//                             updateOnDrag: true,
//                             itemCount: 5,
//                             unratedColor: Colors.grey[500],
//                             itemPadding: EdgeInsets.all(16),
//                             itemSize: 24,
//                             itemBuilder: (context, _) => Icon(
//                               LineIcons.starAlt,
//                               color: Theme.of(context).colorScheme.primary,
//                             ),
//                             onRatingUpdate: (rating) {
//                               ingredient.cumulativeRating += rating;
//                               ingredient.ratingCount++;
//                               (context as Element).markNeedsBuild();
//                             },
//                           ),
//                           const SizedBox(width: 8),
//                           Text(
//                             '${ingredient.averageRating.toStringAsFixed(1)} (${ingredient.ratingCount})',
//                             style: Theme.of(context).textTheme.bodyLarge,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 24),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: _buildInfoCard(
//                           'APPLICATIONS',
//                           ingredient.appliedIn,
//                           context,
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       Expanded(
//                         child: _buildInfoCard(
//                           'REGION USED',
//                           ingredient.regionUsed.split(','),
//                           context,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 24),
//                   Text(
//                     'Description',
//                     style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                           fontWeight: FontWeight.bold,
//                         ),
//                   ),
//                   const SizedBox(height: 8),
//                   Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).cardColor,
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.05),
//                           blurRadius: 10,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: Text(
//                       ingredient.description,
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoCard(
//       String title, List<String> items, BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 8),
//           ...items.map(
//             (item) => Padding(
//               padding: const EdgeInsets.only(bottom: 4),
//               child: Row(
//                 children: [
//                   const Text(
//                     '•',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/for_favorites.dart';
import 'package:recipeapp/models/spices.dart';

class SpiceDetails extends StatelessWidget {
  final Ingredient ingredient;

  const SpiceDetails({Key? key, required this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRatingSection(context),
                  const SizedBox(height: 24),
                  _buildInfoCards(context),
                  const SizedBox(height: 24),
                  _buildDescriptionSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: ingredient.name,
              child: Image.asset(ingredient.imgUrl, fit: BoxFit.cover),
            ),
            _buildGradientOverlay(),
            _buildSpiceNameOverlay(context),
          ],
        ),
      ),
      actions: [_buildFavoriteButton(context)],
    );
  }

  Widget _buildGradientOverlay() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
        ),
      ),
    );
  }

  Widget _buildSpiceNameOverlay(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          ingredient.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildFavoriteButton(BuildContext context) {
    return Consumer<ForFavorites>(
      builder: (context, favoritesProvider, child) {
        final isFavorite = favoritesProvider.isFavorite(ingredient);
        return IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
          ),
          onPressed: () => favoritesProvider.toggleFavorite(ingredient),
        );
      },
    );
  }

  Widget _buildRatingSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rate this spice',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.grey[600],
              ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            RatingBar.builder(
              initialRating: ingredient.averageRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 24,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Theme.of(context).colorScheme.primary,
              ),
              onRatingUpdate: (rating) {
                // TODO: Implement rating update logic
              },
            ),
            const SizedBox(width: 8),
            Text(
              '${ingredient.averageRating.toStringAsFixed(1)} (${ingredient.ratingCount})',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoCards(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildInfoCard(
            'APPLICATIONS',
            ingredient.appliedIn,
            context,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildInfoCard(
            'REGION USED',
            ingredient.regionUsed.split(','),
            context,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard(
      String title, List<String> items, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            ingredient.description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
