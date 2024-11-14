// //import 'package:firebase_auth/firebase_auth.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:provider/provider.dart';
// import 'package:recipeapp/models/mealbd_model.dart';
// import 'package:recipeapp/models/recipe_model.dart';
// import 'package:recipeapp/reusables/cooking.dart';
// import 'package:recipeapp/reusables/drawer.dart';
// import 'package:recipeapp/reusables/high_rated_recipes.dart';
// import 'package:recipeapp/reusables/int_recipes.dart';
// import 'package:recipeapp/reusables/meal_db_future.dart';
// import 'package:recipeapp/reusables/my_list_tile.dart';
// import 'package:recipeapp/reusables/my_location.dart';
// import 'package:recipeapp/reusables/my_recipe_card.dart';
// import 'package:recipeapp/screens/cooking_tips.dart';
// import 'package:recipeapp/screens/grocery_list.dart';
// import 'package:recipeapp/screens/info.dart';
// import 'package:recipeapp/screens/meal_plan.dart';
// import 'package:recipeapp/screens/recipedetails.dart';
// import 'package:recipeapp/screens/search_filter.dart';
// import 'package:recipeapp/screens/spices_terms.dart';
// import 'package:recipeapp/themes/theme_provider.dart';

// class DiscPage extends StatefulWidget {
//   const DiscPage({super.key});

//   @override
//   State<DiscPage> createState() => _DiscPageState();
// }

// class _DiscPageState extends State<DiscPage> {
//   late Future<List<Meals>> futureMeals;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     fetchAllMeals();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       drawer: AppDrawer(),
//       // Drawer(
//       //groundColor: Theme.of(context).colorScheme.surface,
//       //   child: Padding(
//       //     padding: const EdgeInsets.all(10.0),
//       //     child: SingleChildScrollView(
//       //       child: Column(
//       //         crossAxisAlignment: CrossAxisAlignment.start,
//       //         children: [
//       //           SizedBox(
//       //             height: 40,
//       //           ),
//       //           Icon(
//       //             CupertinoIcons.person_alt_circle,
//       //             size: 140,
//       //             color: Theme.of(context).colorScheme.primary,
//       //           ),
//       //           Text(
//       //               'Logged in as: ${FirebaseAuth.instance.currentUser!.email!}'),
//       //           Divider(
//       //             height: 20,
//       //           ),
//       //           ListTile(
//       //             tileColor: Theme.of(context).colorScheme.scrim,
//       //             title: Text('Dark Mode', style: TextStyle(fontSize: 20)),
//       //             subtitle: Text('Switch'),
//       //             trailing: CupertinoSwitch(
//       //                 value: Provider.of<ThemeProvider>(context, listen: false)
//       //                     .isDark,
//       //                 onChanged: (value) {
//       //                   Provider.of<ThemeProvider>(context, listen: false)
//       //                       .switchThemes();
//       //                 }),
//       //           ),
//       //           MyListTile(
//       //             title: 'Grocery Lists',
//       //             subtitle: 'Tap to view',
//       //             onTap: () {
//       // Navigator.push(context,
//       //     MaterialPageRoute(builder: (_) => GroceryList()));
//       //             },
//       //           ),
//       //           MyListTile(
//       //             title: 'Meal Plans',
//       //             subtitle: 'Tap to view',
//       //             onTap: () {
//       //               Navigator.pop(context);
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (_) => MealPlanScreen()));
//       //             },
//       //           ),
//       //           SizedBox(
//       //             height: 10,
//       //           ),
//       //           Text(
//       //             'Learn more about nutrition!',
//       //             style: TextStyle(fontSize: 20),
//       //           ),
//       //           MyListTile(
//       //             title: 'Cooking Tips',
//       //             subtitle: 'Tap to view',
//       //             onTap: () {
//       //               Navigator.pop(context);
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (_) => CookingTipsScreen()));
//       //             },
//       //           ),
//       //           MyListTile(
//       //             title: 'Dietary Disorders',
//       //             subtitle: 'Def, Recommendations & Restrictions',
//       //             onTap: () {
//       //               Navigator.pop(context);
//       //               Navigator.push(
//       //                   context, MaterialPageRoute(builder: (_) => InfoPage()));
//       //             },
//       //           ),
//       //           MyListTile(
//       //             title: 'Culinary Vocabulary',
//       //             subtitle: 'What, How, When....',
//       //             onTap: () {
//       //               Navigator.pop(context);
//       //               Navigator.push(context,
//       //                   MaterialPageRoute(builder: (_) => SpicesTerms()));
//       //             },
//       //           ),
//       //         ],
//       //       ),
//       //     ),
//       //   ),
//       // ),
//       body: NestedScrollView(
//         physics: NeverScrollableScrollPhysics(),
//         headerSliverBuilder: (context, innerBoxIsSrolled) => [
//           SliverAppBar(
//             iconTheme: IconThemeData(
//                 size: 30, color: Theme.of(context).colorScheme.shadow),
//             pinned: true,
//             expandedHeight: 300,
//             collapsedHeight: 100,
//             floating: true,
//             centerTitle: true,
//             title: Text(
//               'B r o w s e    R e c i p e s',
//               style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.grey[800]),
//             ),
//             actions: [
//               Icon(Icons.new_releases_outlined),
//               SizedBox(
//                 width: 20,
//               )
//             ],
//             flexibleSpace: FlexibleSpaceBar(
//               centerTitle: true,
//               collapseMode: CollapseMode.pin,
//               title: Text.rich(TextSpan(children: [
//                 TextSpan(
//                     text: 'D e l i c i o u s ',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: Theme.of(context).colorScheme.tertiary)),
//                 TextSpan(text: ' C o o k i n g')
//               ])),
//               background: Container(
//                 padding: EdgeInsets.all(5),
//                 margin: EdgeInsets.only(
//                   top: 0,
//                 ),
//                 width: MediaQuery.of(context).size.width - 20,
//                 height: MediaQuery.of(context).size.height / 3,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(0),
//                     // BorderRadius.only(
//                     //     bottomLeft: Radius.circular(50),
//                     //     bottomRight: Radius.circular(50)),
//                     image: DecorationImage(
//                         opacity: .7,
//                         fit: BoxFit.cover,
//                         image: AssetImage('assets/images/rest13.png'))),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Divider(
//                       color: Theme.of(context).colorScheme.secondary,
//                       indent: 20,
//                       height: 10,
//                       thickness: 9,
//                       endIndent: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         MyLocation(),
//                         Container(
//                           height: 30,
//                           width: 3,
//                           color: Colors.greenAccent,
//                         ),
//                         Container(
//                             padding: EdgeInsets.all(5),
//                             decoration: BoxDecoration(
//                                 color: Theme.of(context).colorScheme.secondary,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: IconButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (_) => CookingTipsScreen()));
//                               },
//                               icon: Icon(
//                                 Icons.food_bank_outlined,
//                                 size: 40,
//                               ),
//                             )),
//                         Container(
//                           height: 30,
//                           width: 3,
//                           color: Colors.greenAccent,
//                         ),
//                         GestureDetector(
//                           onTap: () => Navigator.push(context,
//                               MaterialPageRoute(builder: (_) => InfoPage())),
//                           child: Icon(
//                             LineIcons.clock,
//                             size: 40,
//                           ),
//                         )
//                       ],
//                     ),
//                     Divider(
//                       color: Theme.of(context).colorScheme.secondary,
//                       indent: 20,
//                       height: 10,
//                       thickness: 9,
//                       endIndent: 20,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//         body: SingleChildScrollView(
//           physics: AlwaysScrollableScrollPhysics(),
//           child: Container(
//             height: double.maxFinite,
//             width: double.maxFinite,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   margin: EdgeInsets.only(left: 20, right: 20),
//                   decoration: BoxDecoration(
//                       color: Theme.of(context).colorScheme.secondary,
//                       borderRadius: BorderRadius.circular(0)),
//                   child: Text(
//                     'Discover new recipes perfect for beginners and busy users, with dietary options for everyone',
//                     style: TextStyle(
//                       overflow: TextOverflow.fade,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 20, right: 20),
//                       child: ListTile(
//                         tileColor: Theme.of(context).colorScheme.secondary,
//                         title: Row(
//                           children: [
//                             Text(
//                               'Get Inspired\t',
//                               style: TextStyle(
//                                   letterSpacing: 3,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Icon(
//                               Icons.restaurant_outlined,
//                               size: 24,
//                             ),
//                           ],
//                         ),
//                         trailing: TextButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => SearchFilterScreen(),
//                                 ));
//                           },
//                           child: Text(
//                             'view all',
//                             style: TextStyle(
//                                 decoration: TextDecoration.underline,
//                                 color: Theme.of(context).colorScheme.primary,
//                                 fontSize: 15,
//                                 decorationThickness: 2,
//                                 decorationColor:
//                                     Theme.of(context).colorScheme.scrim,
//                                 fontWeight: FontWeight.w700),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     SizedBox(
//                       height: 310,
//                       child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           physics: BouncingScrollPhysics(),
//                           itemCount: recipelist.length,
//                           shrinkWrap: true,
//                           itemBuilder: (context, index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (_) => RecipeDetailPage(
//                                         recipe: recipelist[index]),
//                                   ),
//                                 );
//                               },
//                               child:
//                                   MyRecipeCard(recipelist: recipelist[index]),
//                             );
//                           }),
//                     ),
//                     SizedBox(
//                       height: 2,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(2.0),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '\t Popular Choices, Local & international',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(fontSize: 19),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // CarouselSlider(
//                     //   options: CarouselOptions(
//                     //     height: 200,
//                     //     autoPlay: true,
//                     //     enlargeCenterPage: true,
//                     //     aspectRatio: 16 / 9,
//                     //   ),
//                     //   items: recipelist.map((recipe) {
//                     //     return Builder(
//                     //       builder: (context) {
//                     //         return GestureDetector(
//                     //           onTap: () {
//                     //             Navigator.push(
//                     //               context,
//                     //               MaterialPageRoute(
//                     //                 builder: (_) =>
//                     //                     RecipeDetailScreen(recipe: recipe),
//                     //               ),
//                     //             );
//                     //           },
//                     //           child: MyRecipeCard(recipelist: recipe),
//                     //         );
//                     //       },
//                     //     );
//                     //   }).toList(),
//                     // ),
//                     ListView.builder(
//                         shrinkWrap: true,
//                         reverse: true,
//                         padding: EdgeInsets.zero,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: recipelist.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                               width: 300,
//                               padding: EdgeInsets.all(8),
//                               margin: EdgeInsets.symmetric(
//                                   horizontal: 8, vertical: 2),
//                               decoration: BoxDecoration(
//                                   color:
//                                       Theme.of(context).colorScheme.secondary,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: PopularItems(recipo: recipelist[index]));
//                         }),
//                     SizedBox(
//                       height: 160,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         itemCount: 5,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             width: 120,
//                             margin: const EdgeInsets.only(right: 16),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey[300]!),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 CircleAvatar(
//                                   radius: 30,
//                                   backgroundColor: Colors.grey[300],
//                                   child: Text('CH${index + 1}'),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   'Chef ${index + 1}',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Text(
//                                   '20 Recipes',
//                                   style: TextStyle(
//                                     color: Colors.grey[600],
//                                     fontSize: 12,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     FutureBuilder<MealDb>(
//                         future: fetchAllMeals(),
//                         builder: (context, snapshot) {
//                           if (snapshot.connectionState ==
//                               ConnectionState.waiting) {
//                             return Center(
//                               child: CircularProgressIndicator(
//                                 color: Colors.amber,
//                               ),
//                             );
//                           } else if (snapshot.hasError) {
//                             return Text(snapshot.error.toString());
//                           } else if (snapshot.hasData) {
//                             return ListView.builder(
//                                 scrollDirection: Axis.vertical,
//                                 shrinkWrap: true,
//                                 itemCount: snapshot.data!.meals!.length,
//                                 itemBuilder: (context, index) {
//                                   Meals meal = snapshot.data!.meals![index];
//                                   return GestureDetector(
//                                     onTap: () => Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (_) =>
//                                               MyCookingGuide(meal: meal),
//                                         )),
//                                     child: Container(
//                                         width: 300,
//                                         height: 100,
//                                         padding: EdgeInsets.all(8),
//                                         margin: EdgeInsets.symmetric(
//                                             horizontal: 8, vertical: 2),
//                                         decoration: BoxDecoration(
//                                             color: Colors.white,
//                                             borderRadius:
//                                                 BorderRadius.circular(20)),
//                                         child: InterRecipes(meal: meal)),
//                                   );
//                                 });
//                           }
//                           return Text('error');
//                         })
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// /*import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:provider/provider.dart';
// import 'package:recipeapp/models/recipe_model.dart';
// import 'package:recipeapp/models/mealdb_model.dart';
// import 'package:recipeapp/services/recipe_service.dart';
// import 'package:recipeapp/services/mealdb_service.dart';
// import 'package:recipeapp/widgets/app_drawer.dart';
// import 'package:recipeapp/widgets/recipe_card.dart';
// import 'package:recipeapp/widgets/chef_card.dart';
// import 'package:recipeapp/widgets/meal_card.dart';
// import 'package:recipeapp/screens/recipe_detail_screen.dart';
// import 'package:recipeapp/screens/search_filter_screen.dart';

// class DiscoveryScreen extends StatefulWidget {
//   const DiscoveryScreen({Key? key}) : super(key: key);

//   @override
//   _DiscoveryScreenState createState() => _DiscoveryScreenState();
// }

// class _DiscoveryScreenState extends State<DiscoveryScreen> {
//   late Future<List<Recipe>> _recipesFuture;
//   late Future<List<Meal>> _mealsFuture;

//   @override
//   void initState() {
//     super.initState();
//     _recipesFuture = RecipeService().getRecipes();
//     _mealsFuture = MealDbService().getMeals();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       drawer: const AppDrawer(),
//       body: CustomScrollView(
//         slivers: [
//           _buildSliverAppBar(),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildInspirationSection(),
//                   const SizedBox(height: 24),
//                   _buildPopularChoicesSection(),
//                   const SizedBox(height: 24),
//                   _buildChefsSection(),
//                   const SizedBox(height: 24),
//                   _buildMealsSection(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSliverAppBar() {
//     return SliverAppBar(
//       expandedHeight: 200,
//       floating: true,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         title: const Text('Discover Recipes'),
//         background: Image.asset(
//           'assets/images/rest13.png',
//           fit: BoxFit.cover,
//         ),
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.search),
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => const SearchFilterScreen()),
//           ),
//         ),
//       ],
//     ).animate().fadeIn().slideY();
//   }

//   Widget _buildInspirationSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Get Inspired',
//           style: Theme.of(context).textTheme.headline6,
//         ).animate().fadeIn().slideX(),
//         const SizedBox(height: 16),
//         SizedBox(
//           height: 250,
//           child: FutureBuilder<List<Recipe>>(
//             future: _recipesFuture,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(child: CircularProgressIndicator());
//               } else if (snapshot.hasError) {
//                 return Center(child: Text('Error: ${snapshot.error}'));
//               } else if (snapshot.hasData) {
//                 return ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: snapshot.data!.length,
//                   itemBuilder: (context, index) {
//                     return RecipeCard(
//                       recipe: snapshot.data![index],
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => RecipeDetailScreen(
//                             recipe: snapshot.data![index],
//                           ),
//                         ),
//                       ),
//                     ).animate().fadeIn().slideX(delay: Duration(milliseconds: 100 * index));
//                   },
//                 );
//               }
//               return const SizedBox.shrink();
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildPopularChoicesSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Popular Choices',
//           style: Theme.of(context).textTheme.headline6,
//         ).animate().fadeIn().slideX(),
//         const SizedBox(height: 16),
//         FutureBuilder<List<Recipe>>(
//           future: _recipesFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (snapshot.hasData) {
//               return ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return RecipeCard(
//                     recipe: snapshot.data![index],
//                     isHorizontal: true,
//                     onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => RecipeDetailScreen(
//                           recipe: snapshot.data![index],
//                         ),
//                       ),
//                     ),
//                   ).animate().fadeIn().slideX(delay: Duration(milliseconds: 100 * index));
//                 },
//               );
//             }
//             return const SizedBox.shrink();
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildChefsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Top Chefs',
//           style: Theme.of(context).textTheme.headline6,
//         ).animate().fadeIn().slideX(),
//         const SizedBox(height: 16),
//         SizedBox(
//           height: 160,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: 5,
//             itemBuilder: (context, index) {
//               return ChefCard(
//                 name: 'Chef ${index + 1}',
//                 recipeCount: 20,
//                 imageUrl: 'https://example.com/chef${index + 1}.jpg',
//               ).animate().fadeIn().slideX(delay: Duration(milliseconds: 100 * index));
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildMealsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Meals of the Day',
//           style: Theme.of(context).textTheme.headline6,
//         ).animate().fadeIn().slideX(),
//         const SizedBox(height: 16),
//         FutureBuilder<List<Meal>>(
//           future: _mealsFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (snapshot.hasData) {
//               return ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return MealCard(
//                     meal: snapshot.data![index],
//                     onTap: () {
//                       // Navigate to meal detail screen
//                     },
//                   ).animate().fadeIn().slideX(delay: Duration(milliseconds: 100 * index));
//                 },
//               );
//             }
//             return const SizedBox.shrink();
//           },
//         ),
//       ],
//     );
//   }
// }

// export default function Component() {
//   return <DiscoveryScreen />;
// } */
//////////////////////
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/more_recipes.dart';
import 'package:recipeapp/models/recipe_model.dart';

import 'package:recipeapp/reusables/drawer.dart';
import 'package:recipeapp/screens/cooking_tips.dart';
import 'package:recipeapp/screens/info.dart';
import 'package:recipeapp/screens/search_filter.dart';

class DiscoveryScreen extends StatefulWidget {
  DiscoveryScreen({Key? key}) : super(key: key);

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  final ScrollController _scrollController = ScrollController();
  String _selectedAddress = 'Enter a valid address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: AppDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildHeader(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLocationBar(),
                _buildTagline(),
                _buildDescription(),
                _buildInspiredSection(),
                _buildPopularSection(),
                Text('Coming Soon')
              ].animate(interval: 100.ms).fadeIn().slideY(begin: 0.1, end: 0),
            ),
          ),
        ],
      ),
      //bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildHeader() {
    return SliverAppBar(
      expandedHeight: 120,
      floating: true,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Browse Recipes',
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu, color: Colors.grey[800]),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_outlined, color: Colors.grey[800]),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildLocationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Address',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey[800]),
                      const SizedBox(width: 8),
                      Text(
                        _selectedAddress,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              _buildQuickActionButton(Icons.restaurant_menu, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const CookingTipsScreen()));
              }),
              const SizedBox(width: 12),
              _buildQuickActionButton(LineIcons.clock, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const InfoPage()));
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionButton(IconData icon, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.grey[800]),
        onPressed: onTap,
      ),
    );
  }

  Widget _buildTagline() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Delicious ',
              style: TextStyle(
                color: Colors.amber[600],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Cooking',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        'Discover new recipes perfect for beginners and busy users, with dietary options for everyone',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  Widget _buildInspiredSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Get Inspired',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.restaurant_menu, color: Colors.grey[800]),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SearchFilterScreen()));
                },
                child: Text(
                  'view all',
                  style: TextStyle(
                    color: Colors.amber[800],
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildRecipeCard(recipelist[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRecipeCard(
      // String title, String chef, String location, String rating, String image)
      Recipe recipe) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              recipe.imgurl,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        recipe.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border),
                  ],
                ),
                Text(
                  'From: ${recipe.author}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            size: 16, color: Colors.grey[800]),
                        const SizedBox(width: 4),
                        Text(
                          recipe.country,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.grey[800]),
                        const SizedBox(width: 4),
                        Text(
                          recipe.ratings.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Popular Choices, Local & international',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 3,
          itemBuilder: (context, index) {
            return _buildPopularCard(
              international[index],
            );
          },
        ),
      ],
    );
  }

  Widget _buildPopularCard(MoreRecipes recipe) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(16)),
            child: Image.asset(
              recipe.imgUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  recipe.category,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // Widget _buildBottomNav() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.1),
  //           spreadRadius: 1,
  //           blurRadius: 10,
  //         ),
  //       ],
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           _buildNavItem(Icons.home, 'Home', true),
  //           _buildNavItem(Icons.favorite_border, 'Favorites', false),
  //           _buildNavItem(Icons.restaurant_menu, 'Recipes', false),
  //           _buildNavItem(Icons.chat_bubble_outline, 'Chat', false),
  //           _buildNavItem(Icons.person_outline, 'Profile', false),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildNavItem(IconData icon, String label, bool isSelected) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Icon(
  //         icon,
  //         color: isSelected ? Colors.amber : Colors.grey[600],
  //       ),
  //       Text(
  //         label,
  //         style: TextStyle(
  //           color: isSelected ? Colors.amber : Colors.grey[600],
  //           fontSize: 12,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
