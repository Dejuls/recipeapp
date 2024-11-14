import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReusableAlert extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback proceed;
  final String actionWord;
  final String hintText;
  final String title;
  ReusableAlert(
      {super.key,
      required this.controller,
      required this.proceed,
      required this.actionWord,
      required this.hintText,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20, color: Theme.of(context).colorScheme.tertiary),
      ),
      content: TextField(
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(
              r'[\u0000-\uFFFF]')), // Allows all Unicode characters, including emojis
        ],
        decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondary,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )),
            TextButton(
                onPressed: proceed,
                child: Text(
                  actionWord,
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ))
          ],
        )
      ],
    );
  }
}
