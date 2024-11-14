import 'package:flutter/material.dart';
import 'package:recipeapp/models/user_profile.dart';


class TheProfile extends StatefulWidget {
  const TheProfile({super.key});

  @override
  State<TheProfile> createState() => _TheProfileState();
}

class _TheProfileState extends State<TheProfile> {
  final _formKey = GlobalKey<FormState>();

  // Controllers to capture form inputs
  final _usernameController = TextEditingController();
  final _cuisinesController = TextEditingController();
  final _xpController = TextEditingController();
  final _faves = TextEditingController();
  final _idea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Create User Profile',
            style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 24,
                letterSpacing: 2,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                  'Preamble: The purpose of this form is to collect a few setails that will be helpful to other users when searching for whom to learn form or share ideas and not for sale. Your honesty is a step towards the desired goal',
                  style: TextStyle(fontSize: 22)),
              Divider(
                height: 25,
                thickness: 4,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: 'Please enter your username',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                controller: _cuisinesController,
                decoration: InputDecoration(
                    hintText: 'What are oyur favorite cuisine(s)?',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter a cuisine';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                controller: _faves,
                decoration: InputDecoration(
                    hintText: 'What are your favorite dishes',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your platos favoritos';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLines: 2,
                controller: _xpController,
                decoration: InputDecoration(
                    hintText: 'Do you have any experience with cooking',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your period';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.multiline,
                controller: _idea,
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'What do you think makes a good meal?',
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your thoughts';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    minimumSize: Size(200, 70),
                    shape: RoundedRectangleBorder()),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Create a user profile from form data
                    // final userProfile = UserProfile(
                    //     username: _usernameController.text,
                    //     cuisines: _cuisinesController.text,
                    //     culinaryXp: _xpController.text,
                    //     faves: _faves.text,
                    //     idea: _idea.text);
                    // Navigate to profile display page with user data
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         UserProfileDisplay(user: userProfile),
                    //   ),
                    // );
                  }
                },
                child: Text('Create Profile',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
