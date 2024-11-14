import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:recipeapp/models/user_profile.dart';
import 'package:recipeapp/services/auth_service.dart';

class DatabaseServices {
  final FirebaseFirestore fire = FirebaseFirestore.instance;
  Future<UserProfile?> getUserDetails(String uid) async {
    try {
      DocumentSnapshot userDoc = await fire.collection('Users').doc(uid).get();
      return UserProfile.fromJson(userDoc);
    } catch (e) {
      return null;
    }
  }

Future<void> updateFields(String value, String field) async {
  String? uid = AuthService().currentUser()?.uid;
  if (uid == null) {
    print('No user is logged in. Redirect to login.');
    return; // or handle accordingly
  }
  try {
    await fire.collection('Users').doc(uid).update({value: field});
  } catch (e) {
    print('Error updating field: $e');
  }
}

/*
  Future<void> updateFields(String field) async {
    String uid = AuthService().currentUser()!.uid;
    try {
      await fire.collection('Users').doc(uid).update({'idea': field});
    } catch (e) {}
  }*/
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadProfileImage(String userId, Uint8List imageData) async {
    try {
      // Create a reference to the location you want to upload to in Firebase Storage
      final Reference ref = _storage.ref().child('user_profiles').child('$userId.jpg');

      // Create metadata
      final SettableMetadata metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'userId': userId},
      );

      // Start the upload task
      final UploadTask uploadTask = ref.putData(imageData, metadata);

      // Wait for the upload to complete
      final TaskSnapshot snapshot = await uploadTask;

      // Get the download URL
      final String downloadUrl = await snapshot.ref.getDownloadURL();

      // Update the user's profile in Firestore
      await _firestore.collection('Users').doc(userId).update({
        'profileImageUrl': downloadUrl,
        'lastUpdated': FieldValue.serverTimestamp(),
      });

      print('Profile image uploaded successfully for user: $userId');
      return downloadUrl;
    } catch (e) {
      print('Error uploading profile image: $e');
      throw Exception('Failed to upload profile image: $e');
    }
  }

}
