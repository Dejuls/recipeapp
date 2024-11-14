// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:provider/provider.dart';
// import 'package:recipeapp/models/for_favorites.dart';
// import 'package:recipeapp/models/list_good.dart';
// import 'package:recipeapp/models/more_recipes.dart';

// // ignore: must_be_immutable
// class MyCookingGuide2 extends StatelessWidget {
//   //final Object source;

//   String? cuisine;
//   MoreRecipes mowa;
//   MyCookingGuide2({super.key, this.cuisine, required this.mowa});
//   final TextEditingController _commentController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final provider = ForFavorites.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Recipe Description',
//           style: TextStyle(fontSize: 23, letterSpacing: 2.4),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () => provider.toggleFavorite(mowa),
//             icon: Icon(provider.isFavorite(mowa)
//                 ? Icons.favorite
//                 : Icons.favorite_border_outlined),
//             color:
//                 provider.isFavorite(mowa) ? Colors.redAccent : Colors.grey[500],
//             iconSize: 33,
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               // alignment: Alignment.topCenter,
//               height: MediaQuery.of(context).size.height / 2,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(mowa.imgUrl), fit: BoxFit.cover),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 6, vertical: 10),
//                       decoration: BoxDecoration(
//                           color: Colors.grey[900]!,
//                           borderRadius: BorderRadius.circular(20)),
//                       width: MediaQuery.of(context).size.width - 10,
//                       margin: EdgeInsets.only(bottom: 10),
//                       child: Center(
//                         child: Text(
//                           mowa.name,
//                           style: TextStyle(
//                               letterSpacing: 2,
//                               color: Colors.grey[600],
//                               fontSize: 24),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 6, right: 6, top: 3),
//               padding: EdgeInsets.all(8),
//               decoration:
//                   BoxDecoration(color: Theme.of(context).colorScheme.secondary),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Origin: ' + mowa.origin,
//                                 textScaler: TextScaler.linear(1.6),
//                                 style: TextStyle(
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .inversePrimary,
//                                     fontWeight: FontWeight.bold)),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text('Category: ' + mowa.category,
//                                 textScaler: TextScaler.linear(1.3),
//                                 style: TextStyle(
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .inversePrimary)),
//                           ]),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           RatingBar.builder(
//                             initialRating: mowa.averageRating,
//                             glowColor: Theme.of(context).colorScheme.tertiary,
//                             allowHalfRating: true,
//                             itemSize: 30,
//                             itemBuilder: (context, _) {
//                               return Icon(LineIcons.starAlt);
//                             },
//                             onRatingUpdate: (rating) {
//                               // Update the rating and the count
//                               mowa.cumulativeRating += rating;
//                               mowa.ratingCount++;

//                               // Optionally, use setState to refresh the UI
//                               (context as Element).markNeedsBuild();
//                             },
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 '${mowa.averageRating.toStringAsFixed(1)}',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(width: 10),
//                               Text(
//                                 '(${mowa.ratingCount} ratings)',
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.grey[600]),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Padding(
//                       //   padding: const EdgeInsets.all(8.0),
//                       //   child: Text('Author: ' + meal.strSource!,
//                       //       maxLines: 2,
//                       //       overflow: TextOverflow.ellipsis,
//                       //       textScaler: TextScaler.linear(1.2),
//                       //       style: TextStyle(
//                       //         color: Colors.grey[500],
//                       //       )),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               thickness: 2,
//               color: Theme.of(context).colorScheme.tertiary,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Ingredients',
//                     style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(6),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Theme.of(context).colorScheme.secondary,
//                       width: 3)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(mowa.ingredients.join('\n'),
//                           style: TextStyle(fontSize: 16)),
//                       SizedBox(
//                         width: 25,
//                       ),
//                       Text(mowa.measure.join('\n'),
//                           style: TextStyle(
//                               fontSize: 16,
//                               color: Theme.of(context).colorScheme.tertiary))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               thickness: 2,
//               color: Theme.of(context).colorScheme.tertiary,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 6, right: 6),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Theme.of(context).colorScheme.secondary),
//                   color: Theme.of(context).colorScheme.secondary),
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Procedure',
//                           style: TextStyle(
//                               fontSize: 19, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   Text('${mowa.instructions}\n',
//                       style: TextStyle(fontSize: 16)),
//                 ],
//               ),
//             ),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(),
//                     minimumSize:
//                         Size(MediaQuery.of(context).size.width - 10, 60),
//                     backgroundColor:
//                         Theme.of(context).colorScheme.inversePrimary),
//                 onPressed: () {
//                   context.read<ListGood>().createDynamicList(mowa);
//                   // Navigator.push(
//                   //     context, MaterialPageRoute(builder: (_) => GroceryList()));
//                 },
//                 child: Text(
//                   'Auto Generate List',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 )),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Comments', style: TextStyle(fontSize: 20)),
//                   const SizedBox(height: 10),
//                   _buildCommentInput(),
//                   const SizedBox(height: 10),
//                   _buildCommentList(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCommentInput() {
//     return Row(
//       children: [
//         Expanded(
//           child: TextField(
//             controller: _commentController,
//             decoration: InputDecoration(
//               labelText: 'Add a comment...',
//               border: OutlineInputBorder(),
//             ),
//           ),
//         ),
//         IconButton(
//           icon: Icon(Icons.send),
//           onPressed: _addComment,
//         ),
//       ],
//     );
//   }

//   Widget _buildCommentList() {
//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('comments')
//           .where('recipename', isEqualTo: mowa.name)
//           .orderBy('timestamp', descending: true)
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Center(child: CircularProgressIndicator());
//         }

//         final comments = snapshot.data!.docs;
//         return ListView.builder(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: comments.length,
//           itemBuilder: (context, index) {
//             final comment = comments[index];
//             return ListTile(
//               title: Text(comment['username']),
//               subtitle: Text(comment['text']),
//               trailing: Text(comment['timestamp'].toDate().toString()),
//             );
//           },
//         );
//       },
//     );
//   }

//   // Function to add a new comment to Firestore
//   Future<void> _addComment() async {
//     if (_commentController.text.isEmpty) return;

//     await FirebaseFirestore.instance.collection('comments').add({
//       'recipename': mowa.name,
//       'username': 'Anonymous', // Replace with real user data if available
//       'text': _commentController.text,
//       'timestamp': Timestamp.now(),
//     });

//     _commentController.clear(); // Clear the input field after submission
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/for_favorites.dart';
import 'package:recipeapp/models/list_good.dart';
import 'package:recipeapp/models/more_recipes.dart';

class RecipeDetails extends StatelessWidget {
  final MoreRecipes recipe;

  RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = ForFavorites.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            leading: IconButton(
              icon: Icon(CupertinoIcons.back),
              iconSize: 40,
              onPressed: () => Navigator.pop(context),
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    recipe.imgUrl,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => provider.toggleFavorite(recipe),
                icon: Icon(
                  provider.isFavorite(recipe)
                      ? Icons.favorite_rounded
                      : Icons.favorite,
                  color: provider.isFavorite(recipe)
                      ? Colors.redAccent
                      : Colors.white,
                  size: 45,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.name,
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              recipe.origin,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.secondary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              recipe.category,
                              style: TextStyle(
                                color: theme.colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: recipe.averageRating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 24,
                            itemBuilder: (context, _) => Icon(
                              LineIcons.starAlt,
                              color: theme.colorScheme.primary,
                            ),
                            onRatingUpdate: (rating) {
                              recipe.cumulativeRating += rating;
                              recipe.ratingCount++;
                              (context as Element).markNeedsBuild();
                            },
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${recipe.averageRating.toStringAsFixed(1)} (${recipe.ratingCount})',
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _buildSection(
                  context,
                  'Ingredients',
                  Column(
                    children: List.generate(
                      recipe.ingredients.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                recipe.ingredients[index],
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            // Text(
                            //   recipe.measure.join('\n'),
                            //   style: theme.textTheme.bodyLarge?.copyWith(
                            //     color: theme.colorScheme.primary,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                _buildSection(
                  context,
                  'Instructions',
                  Text(
                    recipe.instructions,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.read<ListGood>().createDynamicList(recipe);
                    },
                    icon: Icon(Icons.shopping_cart),
                    label: Text('Generate Shopping List'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                _buildCommentsSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, Widget content) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          content,
        ],
      ),
    );
  }

  Widget _buildCommentsSection(BuildContext context) {
    return _buildSection(
      context,
      'Comments',
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _commentController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(
                        r'[\u0000-\uFFFF]')), // Allows all Unicode characters, including emojis
                  ],
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: _addComment,
                icon: Icon(Icons.send),
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('comments')
                .where('recipename', isEqualTo: recipe.name)
                .orderBy('timestamp', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.data!.docs.isEmpty) {
                return Center(
                    child: Text('No comments yet. be the firest to comment'));
              }

              final comments = snapshot.data!.docs;
              return ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: comments.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        comment['username'][0].toUpperCase(),
                      ),
                    ),
                    title: Text(comment['username']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(comment['text']),
                        const SizedBox(height: 4),
                        Text(
                          _formatTimestamp(comment['timestamp'].toDate()),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  Future<void> _addComment() async {
    if (_commentController.text.isEmpty) return;

    await FirebaseFirestore.instance.collection('comments').add({
      'recipename': recipe.name,
      'username': 'Anonymous',
      'text': _commentController.text,
      'timestamp': Timestamp.now(),
    });

    _commentController.clear();
  }
}
