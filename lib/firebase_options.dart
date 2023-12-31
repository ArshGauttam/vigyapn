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
    apiKey: 'AIzaSyCdvtdt3a7YtMdXBPmjvJMDhViv4vRC0X0',
    appId: '1:634858997845:web:d353772946673994562cdc',
    messagingSenderId: '634858997845',
    projectId: 'vigyapn-vakbox',
    authDomain: 'vigyapn-vakbox.firebaseapp.com',
    storageBucket: 'vigyapn-vakbox.appspot.com',
    measurementId: 'G-VBWBS49MT7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDM-FW9_IQiGNm2Vn7XrZtl7Rtcyw4CEWs',
    appId: '1:634858997845:android:9b6686a2967b0300562cdc',
    messagingSenderId: '634858997845',
    projectId: 'vigyapn-vakbox',
    storageBucket: 'vigyapn-vakbox.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBg7C0TwHqnpyiW1KDCz0sN1ekIP3bomFY',
    appId: '1:634858997845:ios:4a40f1bd682aa109562cdc',
    messagingSenderId: '634858997845',
    projectId: 'vigyapn-vakbox',
    storageBucket: 'vigyapn-vakbox.appspot.com',
    iosBundleId: 'com.example.vigyapn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBg7C0TwHqnpyiW1KDCz0sN1ekIP3bomFY',
    appId: '1:634858997845:ios:60838a9d6bf997e6562cdc',
    messagingSenderId: '634858997845',
    projectId: 'vigyapn-vakbox',
    storageBucket: 'vigyapn-vakbox.appspot.com',
    iosBundleId: 'com.example.vigyapn.RunnerTests',
  );
}
