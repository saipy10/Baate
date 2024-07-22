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
    apiKey: 'AIzaSyCwwv9iq76hAhgOzX8p8p9uE2pu6Zlx_Vo',
    appId: '1:433175640278:web:4bc133f12858f42eaf7177',
    messagingSenderId: '433175640278',
    projectId: 'baate-ac2f1',
    authDomain: 'baate-ac2f1.firebaseapp.com',
    storageBucket: 'baate-ac2f1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRDCTf1nLpcz9r2kaKtpKaWt47E4TyyW8',
    appId: '1:433175640278:android:37b04c146e12579faf7177',
    messagingSenderId: '433175640278',
    projectId: 'baate-ac2f1',
    storageBucket: 'baate-ac2f1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEJLYnvXw_gdy5dLpOY5XEo_0KMloZa6Q',
    appId: '1:433175640278:ios:2ce98eaf5f903a6daf7177',
    messagingSenderId: '433175640278',
    projectId: 'baate-ac2f1',
    storageBucket: 'baate-ac2f1.appspot.com',
    iosBundleId: 'com.example.baate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEJLYnvXw_gdy5dLpOY5XEo_0KMloZa6Q',
    appId: '1:433175640278:ios:2ce98eaf5f903a6daf7177',
    messagingSenderId: '433175640278',
    projectId: 'baate-ac2f1',
    storageBucket: 'baate-ac2f1.appspot.com',
    iosBundleId: 'com.example.baate',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCwwv9iq76hAhgOzX8p8p9uE2pu6Zlx_Vo',
    appId: '1:433175640278:web:5c942218c7ac6759af7177',
    messagingSenderId: '433175640278',
    projectId: 'baate-ac2f1',
    authDomain: 'baate-ac2f1.firebaseapp.com',
    storageBucket: 'baate-ac2f1.appspot.com',
  );
}