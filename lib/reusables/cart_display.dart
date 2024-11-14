import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartDisplay extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String category;
  const CartDisplay({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.tertiaryFixed,
      ),
      height: 200,
      width: 200,
      //padding: EdgeInsetsDirectional.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imgUrl,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 190,
                      height: 40,

                      //margin: EdgeInsets.symmetric(horizontal: 0),
                      //padding: EdgeInsets.all(8),
                      child: Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(category,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Iconsax.heart5,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(
              'v i e w',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
          SizedBox(
            height: 13,
          )
        ],
      ),
    );
  }
}
