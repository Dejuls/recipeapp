import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:recipeapp/database/database_services.dart';
import 'package:recipeapp/models/user_profile.dart';
import 'package:recipeapp/services/auth_service.dart';

class DatabaseProvider extends ChangeNotifier {
  final auth = AuthService();
  final db = DatabaseServices();
  //Future<UserProfile?> userProfile(String uid) => db.getUserDetails(uid);
  Future<UserProfile?> userProfile(String uid) async {
  UserProfile? profile = await db.getUserDetails(uid);
  if (profile == null) {
    print('No user profile found.');
    // You could return a default profile or handle this case in your UI
  }
  return profile;
}

  Future<void> updateField(String value,String field) => db.updateFields(value,field);
  Future<String> uploadProfileImage(String userId, Uint8List imageData) =>
      db.uploadProfileImage(userId, imageData);
}
