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
    apiKey: 'AIzaSyDiYwxKaOTFfWqE9gjcmA10EOAA0pNyNv8',
    appId: '1:164049744112:web:828cb567b1963d94fbd235',
    messagingSenderId: '164049744112',
    projectId: 'fir-project-4f81f',
    authDomain: 'fir-project-4f81f.firebaseapp.com',
    storageBucket: 'fir-project-4f81f.firebasestorage.app',
    measurementId: 'G-7XF0XLL4NN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC12RCXPKFo7-o9CUq7-xr4o7pAPyXDbLc',
    appId: '1:164049744112:android:6541c6159a980329fbd235',
    messagingSenderId: '164049744112',
    projectId: 'fir-project-4f81f',
    storageBucket: 'fir-project-4f81f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvSptIgyBGvjPlXwN4oEbUlwbsFCd13kc',
    appId: '1:164049744112:ios:bad11a2423ecee16fbd235',
    messagingSenderId: '164049744112',
    projectId: 'fir-project-4f81f',
    storageBucket: 'fir-project-4f81f.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvSptIgyBGvjPlXwN4oEbUlwbsFCd13kc',
    appId: '1:164049744112:ios:bad11a2423ecee16fbd235',
    messagingSenderId: '164049744112',
    projectId: 'fir-project-4f81f',
    storageBucket: 'fir-project-4f81f.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDiYwxKaOTFfWqE9gjcmA10EOAA0pNyNv8',
    appId: '1:164049744112:web:a56b0a043e419087fbd235',
    messagingSenderId: '164049744112',
    projectId: 'fir-project-4f81f',
    authDomain: 'fir-project-4f81f.firebaseapp.com',
    storageBucket: 'fir-project-4f81f.firebasestorage.app',
    measurementId: 'G-R1VLQTJXCZ',
  );
}
