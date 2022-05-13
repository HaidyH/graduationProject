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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcgjMBFH5qNMQEhBlhjWunprLPaXbiC4U',
    appId: '1:355929764059:android:f2f71124efb10864065cfe',
    messagingSenderId: '355929764059',
    projectId: 'integrated-oath-321201',
    storageBucket: 'integrated-oath-321201.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmuTxY0wSvmGq5NJmGA1RaoXxpnY2Qftk',
    appId: '1:355929764059:ios:327351d27deeafd0065cfe',
    messagingSenderId: '355929764059',
    projectId: 'integrated-oath-321201',
    storageBucket: 'integrated-oath-321201.appspot.com',
    iosClientId: '355929764059-vae9qa7aievf9dr9pbtvjhsgmi6sbcbv.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );
}
