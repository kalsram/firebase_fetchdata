// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyBbwW-C9LlfrtVymHyIgxgNCRyyKpiF-Jk',
    appId: '1:548677558613:web:985cb4f96e8279732a4fdc',
    messagingSenderId: '548677558613',
    projectId: 'fir-2-8fe65',
    authDomain: 'fir-2-8fe65.firebaseapp.com',
    storageBucket: 'fir-2-8fe65.appspot.com',
    measurementId: 'G-MDND9E6J8F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAhodhwPnStQqFTam9nCwp-SglrHSslYQ',
    appId: '1:548677558613:android:18ddcacce8837ba32a4fdc',
    messagingSenderId: '548677558613',
    projectId: 'fir-2-8fe65',
    storageBucket: 'fir-2-8fe65.appspot.com',
  );
}
