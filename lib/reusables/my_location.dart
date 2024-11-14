import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});
  void shareYourLocation(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text('Please enter Adddress'),
              titleTextStyle: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18),
              content: TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                            20)), //enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor:
                        Theme.of(context).colorScheme.secondary.withOpacity(.5),
                    hintText: '\t\t\th e r e. . . . '),
              ),
              actions: [
                MaterialButton(
                  textColor: Colors.grey[700],
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
                MaterialButton(
                  textColor: Colors.grey[200],
                  onPressed: () => Navigator.pop(context),
                  child: Text('Set'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Address',
            style: TextStyle(color: Colors.grey[900]),
          ),
          GestureDetector(
            onTap: () => shareYourLocation(context),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    'Enter a valid address',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
