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
    apiKey: 'AIzaSyD7p7ETTFcAEZyA_JFSQU38NjCARxfbTvM',
    appId: '1:797116333615:web:e736f4d53ee4963e69d0da',
    messagingSenderId: '797116333615',
    projectId: 'kora-analysis',
    authDomain: 'kora-analysis.firebaseapp.com',
    storageBucket: 'kora-analysis.firebasestorage.app',
    measurementId: 'G-RJF83MRNDX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1Txu21wZMp0jHNgW7ZcMDseWksbgRdBE',
    appId: '1:797116333615:android:e96d8557e52747da69d0da',
    messagingSenderId: '797116333615',
    projectId: 'kora-analysis',
    storageBucket: 'kora-analysis.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiEONOrPTpVjktHqjpYhWwczgLEfN4Zcc',
    appId: '1:797116333615:ios:27e0b5c782324ee769d0da',
    messagingSenderId: '797116333615',
    projectId: 'kora-analysis',
    storageBucket: 'kora-analysis.firebasestorage.app',
    iosBundleId: 'com.example.koraAnalysis',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7p7ETTFcAEZyA_JFSQU38NjCARxfbTvM',
    appId: '1:797116333615:web:71cb6651c9796f6c69d0da',
    messagingSenderId: '797116333615',
    projectId: 'kora-analysis',
    authDomain: 'kora-analysis.firebaseapp.com',
    storageBucket: 'kora-analysis.firebasestorage.app',
    measurementId: 'G-8EXJ2YC1R6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBiEONOrPTpVjktHqjpYhWwczgLEfN4Zcc',
    appId: '1:797116333615:ios:27e0b5c782324ee769d0da',
    messagingSenderId: '797116333615',
    projectId: 'kora-analysis',
    storageBucket: 'kora-analysis.firebasestorage.app',
    iosBundleId: 'com.example.koraAnalysis',
  );

}