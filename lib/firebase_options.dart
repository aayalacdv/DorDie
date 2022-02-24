// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDR_5i471Ge-YdMAVc2Qqs65-3WsS9ARDc',
    appId: '1:384844943278:web:a621e898d23350c7e4c23f',
    messagingSenderId: '384844943278',
    projectId: 'dordie-d1280',
    authDomain: 'dordie-d1280.firebaseapp.com',
    storageBucket: 'dordie-d1280.appspot.com',
    measurementId: 'G-V4L7RGCY79',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsm4UIlS0w4aTKn9Jxrd1HyWgATRHCYME',
    appId: '1:384844943278:android:a2c9d0013f356cdfe4c23f',
    messagingSenderId: '384844943278',
    projectId: 'dordie-d1280',
    storageBucket: 'dordie-d1280.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsbiHtdJ69vYCUWvfSkVl4d4N7pr1XiZ4',
    appId: '1:384844943278:ios:d887f7d6af8cf55ce4c23f',
    messagingSenderId: '384844943278',
    projectId: 'dordie-d1280',
    storageBucket: 'dordie-d1280.appspot.com',
    iosClientId: '384844943278-3l5g0cnk364emfc45r5hmpnrddbscpoc.apps.googleusercontent.com',
    iosBundleId: 'xd',
  );
}
