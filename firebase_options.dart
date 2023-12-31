
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
    apiKey: 'AIzaSyC0lrwtvQwaWQ92yLkH8zxk76YT73FLM6Y',
    appId: '1:582844846186:web:7ba86e39d8013379f5ba13',
    messagingSenderId: '582844846186',
    projectId: 'cww5-de9c4',
    authDomain: 'cww5-de9c4.firebaseapp.com',
    storageBucket: 'cww5-de9c4.appspot.com',
    measurementId: 'G-G320B2JE5J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoVs6Nncm8qOdn1Zs6OY0uiyGUBO4oE_w',
    appId: '1:582844846186:android:9216f0ead0bdeb67f5ba13',
    messagingSenderId: '582844846186',
    projectId: 'cww5-de9c4',
    storageBucket: 'cww5-de9c4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRG9aIoCMWuNOnf4ckdNZ5y2ppUPZTPBM',
    appId: '1:582844846186:ios:205936cc8cc61318f5ba13',
    messagingSenderId: '582844846186',
    projectId: 'cww5-de9c4',
    storageBucket: 'cww5-de9c4.appspot.com',
    iosBundleId: 'com.example.cww5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRG9aIoCMWuNOnf4ckdNZ5y2ppUPZTPBM',
    appId: '1:582844846186:ios:a99f3fe7506e05fef5ba13',
    messagingSenderId: '582844846186',
    projectId: 'cww5-de9c4',
    storageBucket: 'cww5-de9c4.appspot.com',
    iosBundleId: 'com.example.cww5.RunnerTests',
  );
}
