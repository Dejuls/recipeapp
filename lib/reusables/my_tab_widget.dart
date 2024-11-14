import 'package:flutter/material.dart';

class MyTabWidget extends StatelessWidget {
  final TabController tabController;
  const MyTabWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
          controller: tabController,
          padding: EdgeInsets.all(0),
          isScrollable: true,
          dividerColor: Colors.transparent,
          tabs: [
            Tab(
              text: 'Simple',
            ),
            Tab(
              text: 'Local',
            ),
            Tab(
              text: 'Global',
            ),
            Tab(
              text: 'Breakfast',
            ),
            Tab(
              text: 'Lunch',
            ),
            Tab(
              text: 'Dinner',
            ),
            Tab(
              text: 'Snacks',
            ),
            Tab(
              text: 'Dessert',
            ),
            Tab(
              text: 'Drinks',
            ),
            Tab(
              text: 'Vegan',
            ),
            Tab(
              text: 'Vegetarian',
            ),
            Tab(
              text: 'Gluten-Free',
            ),
            Tab(
              text: 'Diary-Free',
            ),
            Tab(
              text: 'No  Nuts',
            ),
            Tab(
              text: 'Beginner',
            ),
            Tab(
              text: 'Medium',
            ),
            Tab(
              text: 'Advanced',
            ),
            Tab(
              text: 'Time',
            ),
            Tab(
              text: 'Tools',
            ),
          ]),
    );
  }
}
