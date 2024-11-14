import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/list_good.dart';
import 'package:recipeapp/reusables/reusable_list.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListGood>(builder: (context, items, child) {
      final things = items.listgood;
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'Your Shopping Lists are here',
            style: TextStyle(fontSize: 22.5, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.5),
              child: Text(
                'List size: ${items.totalGoods().toStringAsFixed(0)} recipes',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: things.length,
                    itemBuilder: (context, index) {
                      final thingsNow = things[index];
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: ListTile(
                          tileColor: Theme.of(context).colorScheme.secondary,
                          title: Text(
                            thingsNow.more.name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            'Tap to view list',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      ReusableList(item: thingsNow))),
                          trailing: IconButton(
                              onPressed: () => items.removeRecipe,
                              icon: Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              )),
                        ),
                      );
                    }))
          ],
        ),
      );
    });
  }
}
