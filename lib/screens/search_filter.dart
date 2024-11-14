// import 'package:flutter/material.dart';
// import 'package:recipeapp/models/filter_model.dart';
// import 'package:recipeapp/models/more_recipes.dart';
// import 'package:recipeapp/models/recipe_model.dart';
// import 'package:recipeapp/reusables/cart_display.dart';
// import 'package:recipeapp/reusables/my_expansion_tile.dart';
// import 'package:recipeapp/reusables/my_tab_widget.dart';
// import 'package:recipeapp/reusables/zigzag.dart';
// import 'package:recipeapp/screens/grids.dart';
// import 'package:recipeapp/services/browse.dart';

// class SearchFilterScreen extends StatefulWidget {
//   const SearchFilterScreen({super.key});

//   @override
//   State<SearchFilterScreen> createState() => _SearchFilterScreenState();
// }

// class _SearchFilterScreenState extends State<SearchFilterScreen>
//     with TickerProviderStateMixin {
// final List<String> criteria = [
//   'Meal Type',
//   'Dietary Restrictions',
//   'Skill Level',
//   'Preparation'
// ];

//   final bool _isselected = true;
//   //late SearchService searching;
//   ScrollController forLocal = ScrollController();
//   ScrollController forinter = ScrollController();
//   ScrollController forBody = ScrollController();
//   ScrollController forSimple = ScrollController();
//   late TabController tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     forBody = ScrollController();
//     // searching = SearchService(
//     //     mtype: meal_material,
//     //     dietrest: dr_line,
//     //     levo: m_material,
//     //     prep: m_prep,
//     //     cipe: recipelist);
//     tabController = TabController(length: 19, vsync: this);
//   }

//   final List<List<MoreRecipes>> allLists = [
//     breakfast,
//     lunch,
//     dinner,
//     local,
//     international,
//     simple
//   ];
//   List<MoreRecipes> searchResults = [];
//   bool isSearching = true;

//   void performSearch(String query) {
//     if (query.isEmpty) {
//       setState(() {
//         searchResults = [];
//         isSearching = false;
//       });
//     } else {
//       setState(() {
//         searchResults = searchAllLists(allLists, query);
//         isSearching = true;
//       });
//     }
//   }

// /*
//    List<dynamic> searchResults = [];
//   void lookUP(String searchTerm) {
//     if (searchTerm.isEmpty) {
//       setState(() {
//         searchResults = [];
//       });
//     } else {
//       var searchStuff = searching.deepSearch(searchTerm);
//       setState(() {
//         searchResults = searchStuff;
//       });
//     }
//   }*/

//   @override
//   void dispose() {
//     super.dispose();
//     forLocal.dispose();
//     forBody.dispose();
//     forinter.dispose();
//     tabController.dispose();
//     forSimple.dispose();
//   }

//   TextEditingController _searchController = TextEditingController();
//   List<MoreRecipes> searchAllLists(List<List<MoreRecipes>> allLists, String query) {
//     query = query.toLowerCase();
//     return allLists.expand((list) => list).where((item) =>
//       item.name.toLowerCase().contains(query) ||
//       item.category.toLowerCase().contains(query)
//     ).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Theme.of(context).colorScheme.surface,
//         appBar: AppBar(
//             elevation: 0,
//             //   backgroundColor: Theme.of(context).colorScheme.surface,
//             foregroundColor: Theme.of(context).colorScheme.tertiary,
//             title: Text(
//               'Discover Your Taste',
//               style: TextStyle(
//                   color: Colors.grey[600], fontWeight: FontWeight.w800),
//             ),
//             centerTitle: true),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 child: TextField(
//                   controller: _searchController,
//                   onChanged: performSearch,
//                   decoration: InputDecoration(
//                     enabled: true,
//                     prefixIcon: Icon(
//                       Icons.search_outlined,
//                       color: Theme.of(context).colorScheme.tertiary,
//                       size: 30,
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(25)),
//                     hintText: 'Search for your favorites',
//                     hintStyle: TextStyle(fontSize: 20),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(25)),
//                     filled: true,
//                     fillColor: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 child: Row(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey[300]!),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Icon(Icons.tune_outlined,
//                           size: 30,
//                           color: Theme.of(context).colorScheme.tertiary),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Sort by',
//                       style: TextStyle(fontSize: 18),
//                     )
//                   ],
//                 ),
//               ),

// Column(
//   //controller: forBody,
//   //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//   // shrinkWrap: true,
//   // physics: AlwaysScrollableScrollPhysics(),
//   children: [
//     MyExpansionTile(
//         langi2: Theme.of(context).colorScheme.secondary,
//         onChanged: (bool _isSelected) {
//           setState(() {
//             _isSelected = !_isselected;
//           });
//         },
//         title: Text(
//           criteria[0],
//           style: TextStyle(fontSize: 20),
//         ),
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             height: 322,
//             width: double.maxFinite,
//             child: GridSample(
//               list: meal_material,
//             ),
//           ),
//         ]),
//     MyExpansionTile(
//         onChanged: (bool _isSelected) {
//           setState(() {
//             _isSelected = !_isselected;
//           });
//         },
//         title: Text(
//           criteria[1],
//           style: TextStyle(fontSize: 20),
//         ),
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             height: 316,
//             width: double.maxFinite,
//             child: GridSample(
//               list: dr_line,
//             ),
//           ),
//         ]),
//     MyExpansionTile(
//         onChanged: (bool _isSelected) {
//           setState(() {
//             _isSelected = !_isselected;
//           });
//         },
//         title: Text(
//           criteria[2],
//           style: TextStyle(fontSize: 20),
//         ),
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             height: 220,
//             width: double.maxFinite,
//             child: GridSample(
//               list: m_material,
//             ),
//           ),
//         ]),
//     MyExpansionTile(
//         onChanged: (bool _isSelected) {
//           setState(() {
//             _isSelected = !_isselected;
//           });
//         },
//         title: Text(
//           criteria[3],
//           style: TextStyle(fontSize: 20),
//         ),
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             height: 316,
//             width: double.maxFinite,
//             child: GridSample(
//               list: m_prep,
//             ),
//           ),
//         ]),
//   ],
// ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Trending Searches',
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Theme.of(context).colorScheme.primary,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 320,
//                 width: double.maxFinite,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                     // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     //     crossAxisCount: 3, mainAxisSpacing: 6, crossAxisSpacing: 6),
//                     itemCount: recipelist.length,
//                     itemBuilder: (context, index) {
//                       return CartDisplay(
//                           imgUrl: recipelist[index].imgurl,
//                           name: recipelist[index].name,
//                           category: recipelist[index].category);
//                     }),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               MyTabWidget(tabController: tabController),
//               SizedBox(
//                 width: double.maxFinite,
//                 height: 600,
//                 child: TabBarView(
//                   controller: tabController,
//                   children: [
//                     ZigZag(controller: forSimple, theList: simple),
//                     ZigZag(
//                       theList: local,
//                       controller: forLocal,
//                     ),
//                     ZigZag(
//                       theList: international,
//                       controller: forinter,
//                     ),
//                     ZigZag(
//                       theList: breakfast,
//                     ),
//                     ZigZag(
//                       theList: lunch,
//                     ),
//                     ZigZag(
//                       theList: dinner,
//                     ),
//                     ZigZag(
//                       theList: snacks,
//                     ),
//                     ZigZag(
//                       theList: dessert,
//                     ),
//                     ZigZag(
//                       theList: refreshments,
//                     ),
//                     ZigZag(
//                       theList: vegan,
//                     ),
//                     ZigZag(
//                       theList: vegeterian,
//                     ),
//                     ZigZag(
//                       theList: glutenFree,
//                     ),
//                     ZigZag(
//                       theList: diaryFree,
//                     ),
//                     ZigZag(
//                       theList: nutFree,
//                     ),
//                     ZigZag(
//                       theList: beginner,
//                     ),
//                     ZigZag(
//                       theList: medium,
//                     ),
//                     ZigZag(
//                       theList: hard,
//                     ),
//                     ZigZag(
//                       theList: time,
//                     ),
//                     ZigZag(
//                       theList: tools,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 300,
//                 height: 200,
//                 child: ListView.builder(
//                   itemCount: searchResults.length,
//                   itemBuilder: (context, index) {
//                     final item = searchResults[index];
//                     return ListTile(
//                       title: Text(item.name),
//                       subtitle: Text(item.category),
//                     );
//                   },
//                 ),
//               ),

//               /*ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: searchResults.length,
//                   itemBuilder: (context, index) {
//                     var resul = searchResults[index];
//                     return ListTile(
//                       title: Text(resul.toString()),
//                     );
//                   }),*/
//             ]),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:recipeapp/models/filter_model.dart';
import 'package:recipeapp/reusables/my_expansion_tile.dart';

import 'package:recipeapp/reusables/zigzag.dart';
import 'package:recipeapp/models/more_recipes.dart';
import 'package:recipeapp/screens/grids.dart';

class SearchFilterScreen extends StatefulWidget {
  const SearchFilterScreen({Key? key}) : super(key: key);

  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen>
    with TickerProviderStateMixin {
  final List<String> criteria = [
    'Meal Type',
    'Dietary Restrictions',
    'Skill Level',
    'Preparation'
  ];
  final bool _isselected = true;
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<String> _tabs = [
    'Simple',
    'Local',
    'Global',
    'Breakfast',
    'Lunch',
    'Dinner',
    'Snacks',
    'Dessert',
    'Drinks',
    'Vegan',
    'Vegetarian',
    'Gluten-Free',
    'Dairy-Free',
    'No Nuts',
    'Beginner',
    'Medium',
    'Advanced',
    'Time',
    'Tools'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover Your Taste'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for your favorites',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement filter functionality
            },
            child: Text('Filter'),
          ),
          Column(
            //controller: forBody,
            //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // shrinkWrap: true,
            // physics: AlwaysScrollableScrollPhysics(),
            children: [
              MyExpansionTile(
                  langi2: Theme.of(context).colorScheme.secondary,
                  onChanged: (bool _isSelected) {
                    setState(() {
                      _isSelected = !_isselected;
                    });
                  },
                  title: Text(
                    criteria[0],
                    style: TextStyle(fontSize: 20),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 322,
                      width: double.maxFinite,
                      child: GridSample(
                        list: meal_material,
                      ),
                    ),
                  ]),
              MyExpansionTile(
                  onChanged: (bool _isSelected) {
                    setState(() {
                      _isSelected = !_isselected;
                    });
                  },
                  title: Text(
                    criteria[1],
                    style: TextStyle(fontSize: 20),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 316,
                      width: double.maxFinite,
                      child: GridSample(
                        list: dr_line,
                      ),
                    ),
                  ]),
              MyExpansionTile(
                  onChanged: (bool _isSelected) {
                    setState(() {
                      _isSelected = !_isselected;
                    });
                  },
                  title: Text(
                    criteria[2],
                    style: TextStyle(fontSize: 20),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 220,
                      width: double.maxFinite,
                      child: GridSample(
                        list: m_material,
                      ),
                    ),
                  ]),
              MyExpansionTile(
                  onChanged: (bool _isSelected) {
                    setState(() {
                      _isSelected = !_isselected;
                    });
                  },
                  title: Text(
                    criteria[3],
                    style: TextStyle(fontSize: 20),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 316,
                      width: double.maxFinite,
                      child: GridSample(
                        list: m_prep,
                      ),
                    ),
                  ]),
            ],
          ),
          TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabs.map((String name) {
                return Stack(
                  children: [
                    ZigZag(
                      theList: _getRecipeList(name),
                      controller: _scrollController,
                    ),
                    Positioned(
                      right: 16,
                      bottom: 16,
                      child: FloatingActionButton(
                        onPressed: _scrollToTop,
                        child: Icon(Icons.arrow_upward),
                        mini: true,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  List<MoreRecipes> _getRecipeList(String category) {
    // Replace this with your actual data source
    switch (category.toLowerCase()) {
      case 'simple':
        return simple;
      case 'local':
        return local;
      case 'global':
        return international;
      case 'breakfast':
        return breakfast;
      case 'lunch':
        return lunch;
      case 'dinner':
        return dinner;
      case 'snacks':
        return snacks;
      case 'dessert':
        return dessert;
      case 'drinks':
        return refreshments;
      case 'vegan':
        return vegan;
      case 'vegetarian':
        return vegeterian;
      case 'gluten-free':
        return glutenFree;
      case 'dairy-free':
        return diaryFree;
      case 'no nuts':
        return nutFree;
      case 'beginner':
        return beginner;
      case 'medium':
        return medium;
      case 'advanced':
        return hard;
      case 'time':
        return time;
      case 'tools':
        return tools;
      default:
        return [];
    }
  }
}
