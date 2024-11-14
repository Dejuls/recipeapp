import 'package:flutter/material.dart';
import 'package:recipeapp/screens/login.dart';
import 'package:recipeapp/screens/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLoggedIn = true;
  void switchPages() {
    setState(() {
      isLoggedIn = !isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return SignInScreen(
        onTap: switchPages,
      );
    } else {
      return RegisterScreen(
        onTap: switchPages,
      );
    }
  }
}
