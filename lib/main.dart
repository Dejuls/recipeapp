import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/database/database_provider.dart';
import 'package:recipeapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recipeapp/models/filter_grids.dart';
import 'package:recipeapp/models/for_favorites.dart';
import 'package:recipeapp/models/list_good.dart';
import 'package:recipeapp/models/login_register.dart';
import 'package:recipeapp/screens/cooking_tips.dart';
import 'package:recipeapp/screens/discover.dart';
import 'package:recipeapp/screens/items_display.dart';
import 'package:recipeapp/screens/onboard.dart';
import 'package:recipeapp/screens/spices_terms.dart';
import 'package:recipeapp/screens/spoon_screen.dart';
import 'package:recipeapp/screens/user_details.dart';
import 'package:recipeapp/screens/users.dart';
import 'package:recipeapp/services/state_check.dart';
import 'package:recipeapp/themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ForFavorites()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => ListGood()),
      ChangeNotifierProvider(create: (_) => DatabaseProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
        // ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // )StateCheck,
        home: StateCheck()
        // UserDetails(
        //   uid: FirebaseAuth.instance.currentUser!.uid,
        // ),
        );
  }
}
