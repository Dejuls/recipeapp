import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:recipeapp/models/recipe_model.dart';

class RecipeDetailPage extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailPage({super.key, required this.recipe});

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              elevation: 10,
              side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary, width: 2),
              minimumSize: Size(200, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(
            'E X P L O R E',
            style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
                fontSize: 23),
          )),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'RECIPE DETAILS',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Theme.of(context).colorScheme.tertiary),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.recipe.imgurl,
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.recipe.imgurl),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: 40,
                      //   child: ElevatedButton(
                      //     onPressed: () => Navigator.pop,
                      //     style: ElevatedButton.styleFrom(
                      //         backgroundColor:
                      //             Theme.of(context).colorScheme.surface,
                      //         padding: EdgeInsets.all(2),
                      //         iconColor:
                      //             Theme.of(context).colorScheme.secondary,
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(5))),
                      //     child: Icon(
                      //       CupertinoIcons.back,
                      //       size: 30,
                      //       color: Theme.of(context).colorScheme.inversePrimary,
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 40,
                      //   child: ElevatedButton(
                      //     onPressed: () => Navigator.pop(context),
                      //     style: ElevatedButton.styleFrom(
                      //         backgroundColor:
                      //             Theme.of(context).colorScheme.error,
                      //         padding: EdgeInsets.all(2),
                      //         iconColor:
                      //             Theme.of(context).colorScheme.secondary,
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(5))),
                      //     child: Icon(
                      //       CupertinoIcons.ellipsis_vertical,
                      //       size: 30,
                      //       color: Theme.of(context).colorScheme.inversePrimary,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 23,
            // ),

            Container(
              height: MediaQuery.of(context).size.height / 2.059,
              //width: MediaQuery.of(context).size.width,
              //padding: EdgeInsets.symmetric(vertical: 25),
              transform: Matrix4.translationValues(0, -35, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 3),
                  color: Theme.of(context).colorScheme.surface),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            widget.recipe.name,
                            textAlign: TextAlign.left,
                            textScaler: TextScaler.linear(2),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            LineIcons.heartAlt,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                      thickness: 2,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Origin: ' + widget.recipe.country,
                                  textScaler: TextScaler.linear(1.3),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant)),
                              Row(
                                children: [
                                  RatingBar.builder(
                                      allowHalfRating: true,
                                      itemSize: 30,
                                      itemBuilder: (context, index) {
                                        return Icon(
                                          LineIcons.starAlt,
                                        );
                                      },
                                      onRatingUpdate: (rating) {})
                                  // for (int i = 1; i < 6; ++i)
                                  //   Icon(
                                  //     Icons.star_outlined,
                                  //     color:
                                  //         Theme.of(context).colorScheme.primary,
                                  //   )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Author: ' + widget.recipe.author,
                                  textScaler: TextScaler.linear(1.2),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary)),
                              Text('Category: ' + widget.recipe.category,
                                  textScaler: TextScaler.linear(1.3),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outline)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Simple Description',
                            textScaler: TextScaler.linear(1.6),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.recipe.description,
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     SizedBox(
            //       width: 12,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            // Text(
            //   widget.recipe.name,
            //   textAlign: TextAlign.left,
            //   textScaler: TextScaler.linear(2),
            // ),
            //         Text(widget.recipe.country,
            //             textScaler: TextScaler.linear(1.5))
            //       ],
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   padding: EdgeInsets.all(3),
            //   width: MediaQuery.of(context).size.width - 20,
            //   decoration: BoxDecoration(
            //       color: Colors.white, borderRadius: BorderRadius.circular(20)),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            // Text(
            //   'Simple Description',
            //   textScaler: TextScaler.linear(1.6),
            //   style: TextStyle(
            //       color: Colors.amber, fontWeight: FontWeight.bold),
            // ),
            // Text(widget.recipe.description,
            //     style: TextStyle(fontSize: 20))
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
