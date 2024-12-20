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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA5YV5O41l07HG7IOfvMKLiB4d2UqTPFWY',
    appId: '1:991471832928:web:18b24bed259d20e87b1805',
    messagingSenderId: '991471832928',
    projectId: 'sanberappflutter-firebase',
    authDomain: 'sanberappflutter-firebase.firebaseapp.com',
    storageBucket: 'sanberappflutter-firebase.appspot.com',
    measurementId: 'G-R6CDHVM3RG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyiA8hV8RSV_YiKzee__ROtR5USgaTAqg',
    appId: '1:991471832928:android:70e8b5d5d0cd69b77b1805',
    messagingSenderId: '991471832928',
    projectId: 'sanberappflutter-firebase',
    storageBucket: 'sanberappflutter-firebase.appspot.com',
  );
}
