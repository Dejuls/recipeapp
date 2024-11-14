// import 'package:flutter/material.dart';
// import 'package:recipeapp/models/recipe_model.dart';

// class PopularItems extends StatelessWidget {
//   final Recipe recipo;
//   const PopularItems({super.key, required this.recipo});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
       
//           width: 120,
//           child: Stack(
//             fit: StackFit.passthrough,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(
//                   recipo.imgurl,
//                   fit: BoxFit.cover,
//                   height: 100,
//                   width: 120,
//                 ),
//               ),
//               Positioned(
//                   left: 50,
//                   top: 50,
//                   right: 6,
//                   child: Card(
//                     color: Theme.of(context).colorScheme.secondary,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(Icons.bar_chart_outlined),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             recipo.ratings.toString() + 'k',
//                             style: TextStyle(fontSize: 19),
//                           )
//                         ],
//                       ),
//                     ),
//                   ))
//             ],
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               recipo.name,
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
//             ),
//             Text(
//               recipo.author + ',' + ' ' + recipo.country,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text(
//                   recipo.category,
//                   style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 6),
//                   padding: EdgeInsets.all(4),
//                   decoration: BoxDecoration(
//                       color: Theme.of(context).colorScheme.tertiary,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Text(
//                     'F r e e',
//                     style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
//                   ),
//                 )
//               ],
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:recipeapp/models/recipe_model.dart';

class PopularItems extends StatelessWidget {
  final Recipe recipe;
  const PopularItems({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Handle tap event
          print('Tapped on ${recipe.name}');
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    recipe.imgurl,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.trending_up, size: 16, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(
                            '${recipe.ratings}k',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      recipe.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${recipe.author} • ${recipe.country}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_offer, size: 14, color: Colors.grey[600]),
                            const SizedBox(width: 4),
                            Text(
                              recipe.category,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'FREE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}