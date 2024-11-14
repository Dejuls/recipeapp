import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/models/login_register.dart';
import 'package:recipeapp/screens/home.dart';

class StateCheck extends StatelessWidget {
  const StateCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomePage();
            } else {
              return const LoginOrRegister();
            }
          },
        )
        );
  }
}
