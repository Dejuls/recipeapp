// import 'package:flutter/material.dart';
// import 'package:recipeapp/models/spices.dart';
// import 'package:recipeapp/models/terms.dart';
// import 'package:recipeapp/reusables/spice_detail%20_model.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// class SpicesTerms extends StatefulWidget {
//   const SpicesTerms({super.key});

//   @override
//   State<SpicesTerms> createState() => _SpicesTermsState();
// }

// class _SpicesTermsState extends State<SpicesTerms>
//     with TickerProviderStateMixin {
//   late TabController _taabu;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _taabu = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             TabBar(
//                 labelStyle: TextStyle(fontSize: 21),
//                 dividerHeight: .1,
//                 dividerColor: Colors.transparent,
//                 controller: _taabu,
//                 tabs: [
//                   Tab(
//                     height: 50,
//                     text: 'Spices',
//                   ),
//                   Tab(
//                     text: 'Terms',
//                   )
//                 ]),
//             /*SizedBox(
//               width: double.maxFinite,
//               height: MediaQuery.of(context).size.height - 20,
//               child: TabBarView(controller: _taabu, children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: StaggeredGridView.countBuilder(
//                       shrinkWrap: true,
//                       mainAxisSpacing: 0,
//                       crossAxisSpacing: 0,
//                       crossAxisCount: 4,
//                       physics: AlwaysScrollableScrollPhysics(),
//                       addAutomaticKeepAlives: false,
//                       //controller: controller,
//                       itemCount: rareIngredients.length,
//                       itemBuilder: (context, index) {
//                         final faciles = rareIngredients[index];
//                         return GestureDetector(
//                           onTap: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => SpiceDetails(
//                                   ingredient: faciles,
//                                 ),
//                               )),
//                           child: Container(
//                             padding: EdgeInsets.all(15.0),
//                             decoration: BoxDecoration(
//                                 color: Theme.of(context).colorScheme.surface),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius:
//                                       BorderRadiusDirectional.circular(20),
//                                   child: Image.asset(
//                                     faciles.imgUrl,
//                                     fit: BoxFit.cover,
//                                     width: 200,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(10),
//                                   child: Row(
//                                     children: [
//                                       SizedBox(
//                                         width: 130,
//                                         child: Text(
//                                           faciles.name,
//                                           //maxLines: 2,
//                                           overflow: TextOverflow.fade,
//                                           style: TextStyle(fontSize: 19),
//                                         ),
//                                       ),
//                                       // IconButton(
//                                       //   onPressed: () => provider.favoriteState(faciles),
//                                       //   icon: Icon(provider.isFave(faciles)
//                                       //       ? Icons.favorite
//                                       //       : Icons.favorite_border_outlined),
//                                       //   color: provider.isFave(faciles)
//                                       //       ? Colors.redAccent
//                                       //       : Colors.grey[500],
//                                       // )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                       staggeredTileBuilder: (index) => StaggeredTile.fit(2)),
//                 ),*/
//                 SizedBox(
//                   width: double.infinity,
//                   height: 900,
//                   child: Column(
//                     children: [
//                       SizedBox(height: 15),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Text(
//                           'Confused about culinary terms? Brush up on your food vocabulary to become a kitchen expert',
//                           style:
//                               TextStyle(fontSize: 22, color: Colors.grey[600]),
//                         ),
//                       ),
//                       Expanded(
//                           child: ListView.builder(
//                               itemCount: cookingJargons.length,
//                               shrinkWrap: true,
//                               itemBuilder: (context, index) {
//                                 final jargon = cookingJargons[index];
//                                 return Container(
//                                   padding: EdgeInsets.all(15),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         jargon.term.toUpperCase(),
//                                         style: TextStyle(
//                                             color: Colors.grey[700],
//                                             letterSpacing: 1,
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 20),
//                                       ),
//                                       Container(
//                                         padding: EdgeInsets.all(20),
//                                         margin: EdgeInsets.all(6),
//                                         decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .secondary,
//                                               width: 3,
//                                             ),
//                                             borderRadius:
//                                                 BorderRadius.circular(20)),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Explanation\n',
//                                               style: TextStyle(
//                                                   color: Theme.of(context)
//                                                       .colorScheme
//                                                       .tertiary,
//                                                   letterSpacing: 1.6,
//                                                   fontWeight: FontWeight.w600,
//                                                   fontSize: 20),
//                                             ),
//                                             Text(
//                                               jargon.explanation,
//                                               style: TextStyle(
//                                                   color: Colors.grey[600],
//                                                   letterSpacing: 1.6,
//                                                   fontWeight: FontWeight.w200,
//                                                   fontSize: 18),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                       // Container(
//                                       //   padding: EdgeInsets.all(20),
//                                       //   margin: EdgeInsets.all(6),
//                                       //   decoration: BoxDecoration(
//                                       //       border: Border.all(
//                                       //         color:
//                                       //             Theme.of(context).colorScheme.secondary,
//                                       //         width: 3,
//                                       //       ),
//                                       //       borderRadius: BorderRadius.circular(20)),
//                                       //   child: Column(
//                                       //     crossAxisAlignment: CrossAxisAlignment.end,
//                                       //     children: [
//                                       //       Text(
//                                       //         'Restrictions\n',
//                                       //         style: TextStyle(
//                                       //             color: Colors.amber,
//                                       //             letterSpacing: 1.6,
//                                       //             fontWeight: FontWeight.w600,
//                                       //             fontSize: 20),
//                                       //       ),
//                                       //       Text(
//                                       //         complication.restrictedFoods.join('\n'),
//                                       //         style: TextStyle(
//                                       //             color: Colors.grey[600],
//                                       //             letterSpacing: 1.6,
//                                       //             fontWeight: FontWeight.w200,
//                                       //             fontSize: 18),
//                                       //       )
//                                       //     ],
//                                       //   ),
//                                       // )
//                                     ],
//                                   ),
//                                 );
//                               }))
//                     ],
//                   ),
//                 ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:recipeapp/models/spices.dart';
import 'package:recipeapp/models/terms.dart';
import 'package:recipeapp/reusables/spice_detail%20_model.dart';

class SpicesTerms extends StatefulWidget {
  const SpicesTerms({super.key});

  @override
  State<SpicesTerms> createState() => _SpicesTermsState();
}

class _SpicesTermsState extends State<SpicesTerms>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildSpiceCard(Ingredient spice) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpiceDetails(ingredient: spice),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    spice.imgUrl,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, size: 16, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          (spice.cumulativeRating / spice.ratingCount)
                              .toStringAsFixed(1),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    spice.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    spice.regionUsed,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      for (final application in spice.appliedIn.take(2))
                        Chip(
                          label: Text(
                            application,
                            style: const TextStyle(fontSize: 12),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.1),
                          padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      if (spice.appliedIn.length > 2)
                        Chip(
                          label: Text(
                            '+${spice.appliedIn.length - 2}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.1),
                          padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Spices & Terms'),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 18,
          ),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: const [
            Tab(text: 'Spices'),
            Tab(text: 'Terms'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Spices Grid
          GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: rareIngredients.length,
            itemBuilder: (context, index) =>
                _buildSpiceCard(rareIngredients[index]),
          ),

          // Terms List (placeholder - implement as needed)
          ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: 10, // Replace with actual terms list
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text('Cooking Term ${index + 1}'),
                  subtitle: Text('Definition of term ${index + 1}'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
