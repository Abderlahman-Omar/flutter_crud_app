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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBbuAoWn0WxBugITVtIK9btg-7o910rB7k',
    appId: '1:753136314984:web:f047c7e82740db6c15a9dd',
    messagingSenderId: '753136314984',
    projectId: 'crud-app-fcbac',
    authDomain: 'crud-app-fcbac.firebaseapp.com',
    storageBucket: 'crud-app-fcbac.appspot.com',
    measurementId: 'G-X7P49W3K2N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsqSSUo1mWIiqVk0Uhjy4Q8xvBWRgrh_Y',
    appId: '1:753136314984:android:78f0462a297182cd15a9dd',
    messagingSenderId: '753136314984',
    projectId: 'crud-app-fcbac',
    storageBucket: 'crud-app-fcbac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkgE1qgdrqqLEZe0WxGP6te7A0dUGpeo8',
    appId: '1:753136314984:ios:84074ee123448b1e15a9dd',
    messagingSenderId: '753136314984',
    projectId: 'crud-app-fcbac',
    storageBucket: 'crud-app-fcbac.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkgE1qgdrqqLEZe0WxGP6te7A0dUGpeo8',
    appId: '1:753136314984:ios:84074ee123448b1e15a9dd',
    messagingSenderId: '753136314984',
    projectId: 'crud-app-fcbac',
    storageBucket: 'crud-app-fcbac.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBbuAoWn0WxBugITVtIK9btg-7o910rB7k',
    appId: '1:753136314984:web:5930b97d2a74fea215a9dd',
    messagingSenderId: '753136314984',
    projectId: 'crud-app-fcbac',
    authDomain: 'crud-app-fcbac.firebaseapp.com',
    storageBucket: 'crud-app-fcbac.appspot.com',
    measurementId: 'G-S1TLQ8QF39',
  );
}
