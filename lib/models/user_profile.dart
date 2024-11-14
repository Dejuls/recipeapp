import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  final String uid;
  final String email;
  final String name;
  final dynamic cuisines;
  final String culinaryXp;
  final dynamic faves;
  final dynamic idea;
  
  String? profileImgUrl;

  // New fields for user interactions
  List<String> blockedUsers;
  List<String> followers;
  List<String> following;

  UserProfile({
    required this.uid,
    required this.email,
    required this.name,
    required this.cuisines,
    required this.culinaryXp,
    required this.faves,
    required this.idea,
    this.profileImgUrl,
    List<String>? blockedUsers,
    List<String>? followers,
    List<String>? following,
  })  : blockedUsers = blockedUsers ?? [],
        followers = followers ?? [],
        following = following ?? [];

  // Convert UserProfile instance to JSON (Map)
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'profileImgUrl': profileImgUrl,
      'cuisines': cuisines,
      'culinaryXp': culinaryXp,
      'faves': faves,
      'idea': idea,
      'blockedUsers': blockedUsers,
      'followers': followers,
      'following': following,
    };
  }

  // Create a UserProfile instance from Firestore DocumentSnapshot
  factory UserProfile.fromJson(DocumentSnapshot user) {
    Map<String, dynamic> data = user.data() as Map<String, dynamic>;

    return UserProfile(
      uid: data['uid'] ?? '',
      email: data['email'] ?? '',
      name: data['name'] ?? '',
      cuisines: data['cuisines'],
      culinaryXp: data['culinaryXp'] ?? '',
      faves: data['faves'],
      idea: data['idea'],
      profileImgUrl: data['profileImgUrl'],
      blockedUsers: List<String>.from(data['blockedUsers'] ?? []),
      followers: List<String>.from(data['followers'] ?? []),
      following: List<String>.from(data['following'] ?? []),
    );
  }
}
