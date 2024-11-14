import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:recipeapp/models/user_profile.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  User? currentUser() {
    return auth.currentUser;
  }

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      // Optionally update last sign-in time
      // firestore.collection("Users").doc(userCredential.user!.uid).set(
      //     {'uid': userCredential.user!.uid, 'email': email},
      //     SetOptions(merge: true));
      UserProfile profile = UserProfile(
          uid: userCredential.user!.uid,
          email: email,
          name: email.split('@')[0],
          cuisines: 'Ugandan',
          faves: 'Luwombo',profileImgUrl: '',
          culinaryXp: '1 year',
          idea: 'A meal with a refreshment');
      await firestore
          .collection("Users")
          .doc(profile.uid)
          .set(profile.toJson());
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(
        code: e.code,
        message: e.message,
      );
    }
  }

  Future<UserCredential> signUpUserWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // firestore.collection("Users").doc(userCredential.user!.uid).set({
      //   'uid': userCredential.user!.uid,
      //   'email': email,
      //   'createdAt': Timestamp.now(),
      // });

      UserProfile profile = UserProfile(
          uid: userCredential.user!.uid,
          email: email,
          name: email.split('@')[0],
          cuisines: 'Italian',
          faves: 'Luwombo',
          culinaryXp: '1 year',profileImgUrl: '',
          idea: 'A meal with a refreshment');
      await firestore
          .collection("Users")
          .doc(profile.uid)
          .set(profile.toJson());
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(
        code: e.code,
        message: e.message,
      );
    }
  }

  Future<void> logOut() {
    return FirebaseAuth.instance.signOut();
  }

   signInWiithGoogle() async {
    final GoogleSignInAccount? _user = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication _authG = await _user!.authentication;
    final AuthCredential cred = GoogleAuthProvider.credential(
      accessToken: _authG.accessToken,
      idToken: _authG.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(cred);
    UserProfile profile = UserProfile(
        uid: _user.id,
        email: _user.email,
        name: _user.email.split('@')[0],
        cuisines: 'Italian',
        faves: 'Pasta',profileImgUrl: '',
        culinaryXp: 'Beginner ',
        idea: 'A meal with a refreshment');
    await firestore.collection('Users').doc(profile.uid).set(profile.toJson());
    
  }

  void resetPassword(String email, BuildContext context) async {
    await auth.sendPasswordResetEmail(email: email).then((value) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Thing was a success')));
    }).onError((error, stackTrace) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Something is off')));
    });
  }
}

// sign in with google


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   User? currentUser() {
//     return auth.currentUser;
//   }

//   Future<UserCredential> signinwithemailandpassword(
//       String email, String password) async {
//     try {
//       UserCredential userCredential = await auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       firestore
//           .collection("Users")
//           .doc(userCredential.user!.uid)
//           .set({'uid': userCredential.user!.uid, 'email': email});
//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       throw Exception(e.code);
//     }
//   }

//   Future<UserCredential> signUpUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       UserCredential usercredential = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       firestore
//           .collection("Users")
//           .doc(usercredential.user!.uid)
//           .set({'uid': usercredential.user!.uid, 'email': email});
//       return usercredential;
//     } on FirebaseAuthException catch (e) {
//       throw Exception(e.code);
//     }
//   }

//   Future<void> logOut() async {
//     return await auth.signOut();
//   }
// }
