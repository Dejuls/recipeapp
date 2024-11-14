import 'package:flutter/material.dart';
import 'package:recipeapp/models/for_favorites.dart';
import 'package:recipeapp/reusables/cooking2.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// ignore: must_be_immutable
class ZigZag extends StatelessWidget {
  final List theList;
  ScrollController? controller;
  ZigZag({
    super.key,
    required this.theList,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final provider = ForFavorites.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          crossAxisCount: 4,
          physics: AlwaysScrollableScrollPhysics(),
          addAutomaticKeepAlives: false,
          controller: controller,
          itemCount: theList.length,
          itemBuilder: (context, index) {
            final faciles = theList[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetails(
                      recipe: faciles,
                    ),
                  )),
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    //color: ,
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      child: Image.asset(
                        faciles.imgUrl,
                        fit: BoxFit.cover,
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: Text(
                              faciles.name,
                              //maxLines: 2,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          IconButton(
                            onPressed: () => provider.toggleFavorite(faciles),
                            icon: Icon(provider.isFavorite(faciles)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined),
                            color: provider.isFavorite(faciles)
                                ? Colors.redAccent
                                : Colors.grey[500],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          staggeredTileBuilder: (index) => StaggeredTile.fit(2)),
    );
  }
}
