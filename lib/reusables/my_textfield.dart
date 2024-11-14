import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  Widget? trailing;
  MyTextfield(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.obscureText,
      this.trailing,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: trailing,
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondary,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[300]!))),
      ),
    );
  }
}
