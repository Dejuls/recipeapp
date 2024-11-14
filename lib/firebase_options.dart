// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCrvJ9eeQpl3oHjIfQsmRbqrWLNbgOB1CE',
    appId: '1:638731008537:web:7128710c1f524a84104888',
    messagingSenderId: '638731008537',
    projectId: 'recipeapp-5121c',
    authDomain: 'recipeapp-5121c.firebaseapp.com',
    storageBucket: 'recipeapp-5121c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoR0huM0wsWSgfs_5KqS7CFggp7X-dW7k',
    appId: '1:638731008537:android:5da27f51e4abc8d9104888',
    messagingSenderId: '638731008537',
    projectId: 'recipeapp-5121c',
    storageBucket: 'recipeapp-5121c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhJlOQAGNxdtezH5URkCh6TNE0FmYISxU',
    appId: '1:638731008537:ios:4d465ec309bfd6ef104888',
    messagingSenderId: '638731008537',
    projectId: 'recipeapp-5121c',
    storageBucket: 'recipeapp-5121c.appspot.com',
    iosBundleId: 'com.example.recipeapp',
  );

}