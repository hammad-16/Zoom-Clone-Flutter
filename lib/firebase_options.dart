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
    apiKey: 'AIzaSyDGpwO2bGxeGEmxtxf0-66Utf3SUsxtGHE',
    appId: '1:380364864791:web:60e5e9393abe4c1c18cb52',
    messagingSenderId: '380364864791',
    projectId: 'newzoomclone-58f68',
    authDomain: 'newzoomclone-58f68.firebaseapp.com',
    storageBucket: 'newzoomclone-58f68.firebasestorage.app',
    measurementId: 'G-627Q9RZ1TS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb60DcHi1ZPuoc8E3wn22KfQsNOLObDH4',
    appId: '1:380364864791:android:40b098bc6bbffae018cb52',
    messagingSenderId: '380364864791',
    projectId: 'newzoomclone-58f68',
    storageBucket: 'newzoomclone-58f68.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAF1vDElYSaIU0_nqFWwq4KfcGBUt9pk3M',
    appId: '1:380364864791:ios:df2c4314848e778e18cb52',
    messagingSenderId: '380364864791',
    projectId: 'newzoomclone-58f68',
    storageBucket: 'newzoomclone-58f68.firebasestorage.app',
    iosBundleId: 'com.example.newzoomclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAF1vDElYSaIU0_nqFWwq4KfcGBUt9pk3M',
    appId: '1:380364864791:ios:df2c4314848e778e18cb52',
    messagingSenderId: '380364864791',
    projectId: 'newzoomclone-58f68',
    storageBucket: 'newzoomclone-58f68.firebasestorage.app',
    iosBundleId: 'com.example.newzoomclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDGpwO2bGxeGEmxtxf0-66Utf3SUsxtGHE',
    appId: '1:380364864791:web:6a1c64b4ca96859a18cb52',
    messagingSenderId: '380364864791',
    projectId: 'newzoomclone-58f68',
    authDomain: 'newzoomclone-58f68.firebaseapp.com',
    storageBucket: 'newzoomclone-58f68.firebasestorage.app',
    measurementId: 'G-8N4EJV839Y',
  );
}