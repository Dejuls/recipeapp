import 'package:flutter/material.dart';
import 'package:recipeapp/models/usda.dart';
import 'package:recipeapp/reusables/usda_future.dart';

class UsdaScreen extends StatefulWidget {
  const UsdaScreen({super.key});

  @override
  State<UsdaScreen> createState() => _UsdaScreenState();
}

class _UsdaScreenState extends State<UsdaScreen> {
  final ApiService apiService = ApiService();
  Usda2? usdaData;
  String query = '';
  void searchFood() async {
    try {
      Usda2 data = await apiService.fetchFoodData(query);
      setState(() {
        usdaData = data;
      });
    } catch (e) {
      // Handle error
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'S e a r c h  m e a l  f o r  i n f o......',
                    hintStyle: TextStyle(fontSize: 20),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            if (usdaData != null) ...[
              Text('Total Hits: ${usdaData!.totalHits}'),
              SizedBox(
                height: 800,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView.builder(
                  itemCount: usdaData!.foods.length,
                  itemBuilder: (context, index) {
                    final food = usdaData!.foods[index];
                    return ListTile(
                      title: Text(food.description ?? 'No Description'),
                      subtitle: Text(food.brandName ?? 'No Brand'),
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
