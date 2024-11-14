import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
        surface: Colors.grey[900]!,
        primary: Colors.grey[700]!,
        secondary: Color.fromARGB(255, 21, 20, 20),
        tertiary: Colors.grey[800]!,
        scrim: Colors.grey.shade800,
        tertiaryFixed: Colors.grey[800]!,shadow: Colors.grey[800]!,
        error: Colors.grey.shade700,
        outline: Colors.grey[900]!,
        inversePrimary: Colors.grey[300]!));
// ThemeData lightTheme = ThemeData(
//     colorScheme: ColorScheme.light(
//         surface: Colors.grey[200]!,
//         primary: Colors.grey.shade500,
//         secondary: Colors.white,
//         inversePrimary: Colors.grey.shade900,
//         tertiary: Colors.amber));