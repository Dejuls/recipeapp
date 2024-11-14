import 'package:flutter/material.dart';
import 'package:recipeapp/reusables/the_profile.dart';
import 'package:recipeapp/screens/discover.dart';
import 'package:recipeapp/screens/favorite_screen.dart';
import 'package:recipeapp/screens/items_display.dart';
import 'package:recipeapp/screens/search_filter.dart';
import 'package:recipeapp/screens/user_details.dart';
import 'package:recipeapp/screens/users.dart';
import 'package:recipeapp/services/auth_service.dart';
import 'package:recipeapp/services/state_check.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late final List<Widget> pages;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [
      //StateCheck(),

      DiscoveryScreen(),
      FavoriteScreen(),
      SearchFilterScreen(),
      UserManagementScreen(),
      UserDetails(uid: AuthService().currentUser()!.uid),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(6),
          child: BottomNavigationBar(
              selectedItemColor: Theme.of(context).colorScheme.tertiary,
              unselectedItemColor: Theme.of(context).colorScheme.inversePrimary,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: 'Favorites'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book_outlined), label: 'Recipes'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: 'Chat'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile'),
              ])),
      body: pages[selectedIndex],

      // body: SingleChildScrollView(
      //   child: Container(
      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         SizedBox(
      //           width: 25,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             Icon(
      //               Icons.abc,
      //               size: 80,
      //             ),
      //             SizedBox(
      //               width: 20,
      //             ),
      //             Text(
      //               'Hello foodie',
      //               style: TextStyle(fontSize: 22),
      //             ),
      //           ],
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'Browse categories',
      //                 style: TextStyle(fontSize: 23, letterSpacing: 2),
      //               ),
      //               Text('SeeAll',
      //                   style: TextStyle(
      //                       fontSize: 23,
      //                       letterSpacing: 2,
      //                       fontWeight: FontWeight.bold))
      //             ],
      //           ),
      //         ),
      //         Container(
      //           height: 200,
      //           width: MediaQuery.of(context).size.width - 25,
      //           decoration: BoxDecoration(
      //               color: Colors.grey[300],
      //               borderRadius: BorderRadius.circular(20)),
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                   children: [
      //                     Text(
      //                       'Discover Recipes',
      //                       style: TextStyle(
      //                           fontSize: 23,
      //                           fontWeight: FontWeight.w600,
      //                           letterSpacing: 2),
      //                     ),
      //                     Icon(
      //                       Icons.search_outlined,
      //                       size: 30,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               Container(
      //                 width: MediaQuery.of(context).size.width / 1.2,
      //                 child: TextFormField(
      //                   enabled: true,
      //                   decoration: InputDecoration(
      //                     filled: true,
      //                     fillColor: Colors.white,
      //                     border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(30),
      //                         borderSide: BorderSide(width: 1.5)),
      //                     enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(30),
      //                         borderSide: BorderSide(
      //                             color: Colors.white, width: 1.5)),
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 13,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 children: [
      //                   SizedBox(
      //                     width: 20,
      //                   ),
      //                   SizedBox(
      //                     width: 100,
      //                     child: FloatingActionButton(
      //                       onPressed: () => Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                               builder: (_) => DiscPage())),
      //                       backgroundColor: Colors.blueAccent,
      //                       child: Text(
      //                         'Try now',
      //                         style: TextStyle(
      //                             color: Colors.white, fontSize: 20),
      //                       ),
      //                     ),
      //                   )
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'Quick Meals',
      //                 style: TextStyle(fontSize: 18, letterSpacing: 2),
      //               ),
      //               Text('View Category',
      //                   style: TextStyle(
      //                       fontSize: 18, fontWeight: FontWeight.bold))
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Column(
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(bottom: 12),
      //               width: MediaQuery.of(context).size.width - 10,
      //               padding: EdgeInsets.all(8),
      //               decoration: BoxDecoration(
      //                   color: Colors.grey[200],
      //                   borderRadius: BorderRadius.circular(20)),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     children: [
      //                       Icon(
      //                         Icons.search_rounded,
      //                         size: 29,
      //                       ),
      //                       SizedBox(
      //                         width: 9,
      //                       )
      //                     ],
      //                   ),
      //                   Text(
      //                     'Healthy Eating',
      //                     style: TextStyle(
      //                         fontSize: 21,
      //                         letterSpacing: 3,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                   Text(
      //                       'data r grg  rrhf fhfhfhgh rgghrgr nbbfhbf fefjd dbdbdbddgd.',
      //                       style: TextStyle(
      //                           fontSize: 19, overflow: TextOverflow.clip)),
      //                   SizedBox(
      //                     height: 10,
      //                   ),
      //                   Row(
      //                     children: [
      //                       Icon(
      //                         Icons.bookmark,
      //                         color: Colors.black,
      //                         size: 23,
      //                       ),
      //                       SizedBox(
      //                         width: 6,
      //                       ),
      //                       Text(
      //                         "Julio's Recipes",
      //                         style:
      //                             TextStyle(fontSize: 16, letterSpacing: 2.3),
      //                       ),
      //                     ],
      //                   )
      //                 ],
      //               ),
      //             ),
      //             Container(
      //               margin: EdgeInsets.only(bottom: 10),
      //               width: MediaQuery.of(context).size.width -10,
      //               padding: EdgeInsets.all(8),
      //               decoration: BoxDecoration(
      //                   color: Colors.grey[200],
      //                   borderRadius: BorderRadius.circular(20)),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     children: [
      //                       Icon(
      //                         Icons.search_rounded,
      //                         size: 29,
      //                       ),
      //                       SizedBox(
      //                         width: 9,
      //                       )
      //                     ],
      //                   ),
      //                   Text(
      //                     'Healthy Eating',
      //                     style: TextStyle(
      //                         fontSize: 21,
      //                         letterSpacing: 3,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                   Text(
      //                       'data r grg  rrhf fhfhfhgh rgghrgr nbbfhbf fefjd dbdbdbddgd.',
      //                       style: TextStyle(letterSpacing: 2, fontSize: 19,overflow: TextOverflow.clip)),
      //                   SizedBox(
      //                     height: 10,
      //                   ),
      //                   Row(
      //                     children: [
      //                       Icon(
      //                         Icons.bookmark,
      //                         color: Colors.black,
      //                         size: 23,
      //                       ),
      //                       SizedBox(
      //                         width: 6,
      //                       ),
      //                       Text(
      //                         "Julio's Recipes",
      //                         style:
      //                             TextStyle(fontSize: 16, letterSpacing: 2.3),
      //                       ),
      //                     ],
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 8,
      //         ),
      //         Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Text(
      //               'Dietary Preferences',
      //               style: TextStyle(
      //                   fontSize: 21,
      //                   fontWeight: FontWeight.w500,
      //                   letterSpacing: 2),
      //             ),
      //           ],
      //         ),
      //         // ListView.builder(
      //         //   itemCount: 4,
      //         //   itemBuilder: (BuildContext context, int index) {
      //         //     return Container(
      //         //       height: MediaQuery.of(context).size.height / 5,
      //         //       width: MediaQuery.of(context).size.width - 30,
      //         //       decoration: BoxDecoration(color: Colors.white70),
      //         //     );
      //         //   },
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
