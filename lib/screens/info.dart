import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/models/nutri_info.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.back,
            size: 30,
          ),
        ),
        actions: [
          Icon(
            Icons.emoji_nature_outlined,
            size: 36,
            color: Colors.green,
          ),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Colors.transparent,
        title: Text('Nutritional Information', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Learn how to manage dietary challenges. Find recipes that fit your restrictions with ease.',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: dietaryComplications.length,
                  itemBuilder: (context, index) {
                    final complication = dietaryComplications[index];
                    return Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            complication.name.toUpperCase(),
                            style: TextStyle(
                                color: Colors.grey[700],
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Recommendations\n',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      letterSpacing: 1.6,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                Text(
                                  complication.recommendations.join('\n'),
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      letterSpacing: 1.6,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Restrictions\n',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      letterSpacing: 1.6,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                Text(
                                  complication.restrictedFoods.join('\n'),
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      letterSpacing: 1.6,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
