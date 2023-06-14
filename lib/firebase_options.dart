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
    apiKey: 'AIzaSyAeyOUkQ_XCjCUH8xkWhvU_wYovx1fjmI8',
    appId: '1:222483388092:web:259169ab7761c2c53362b9',
    messagingSenderId: '222483388092',
    projectId: 'fir-flutter-codelab-fcfdb',
    authDomain: 'fir-flutter-codelab-fcfdb.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-fcfdb.appspot.com',
    measurementId: 'G-S65QLR0TDZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcAhZKRshCFmuFSI0wsSQQmukNcZJvD3g',
    appId: '1:222483388092:android:5a3900a126efc6b73362b9',
    messagingSenderId: '222483388092',
    projectId: 'fir-flutter-codelab-fcfdb',
    storageBucket: 'fir-flutter-codelab-fcfdb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhfMZVTJEKgzkNJpu4R5jCQ2nt7mdDg40',
    appId: '1:222483388092:ios:1513729384831e8e3362b9',
    messagingSenderId: '222483388092',
    projectId: 'fir-flutter-codelab-fcfdb',
    storageBucket: 'fir-flutter-codelab-fcfdb.appspot.com',
    iosClientId: '222483388092-3mpd7stenuckatm5uibrklbglo805b65.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAuthAndUi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhfMZVTJEKgzkNJpu4R5jCQ2nt7mdDg40',
    appId: '1:222483388092:ios:b0feddfd8da52cf43362b9',
    messagingSenderId: '222483388092',
    projectId: 'fir-flutter-codelab-fcfdb',
    storageBucket: 'fir-flutter-codelab-fcfdb.appspot.com',
    iosClientId: '222483388092-iu3qqj8pg74r14fhnh4e7bd09ug385sv.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAuthAndUi.RunnerTests',
  );
}
