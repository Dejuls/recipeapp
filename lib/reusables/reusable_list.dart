import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/list_good.dart';

class ReusableList extends StatelessWidget {
  final Itemonlist item;
  const ReusableList({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Recipe for: ${item.more.name}',
          style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // Text('Thanks for selecting this recipe, good Luck '),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.scrim, width: 4)),
                child: Text(
                  context.read<ListGood>().theRist(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
