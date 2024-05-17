import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSBt4XqJNLwPKSfyJ6J5Hw2U5JB-B96E4",
            authDomain: "appchesautentication.firebaseapp.com",
            projectId: "appchesautentication",
            storageBucket: "appchesautentication.appspot.com",
            messagingSenderId: "321169805256",
            appId: "1:321169805256:web:094b3a0ff06d749a493afd",
            measurementId: "G-TXFPBGYQ7J"));
  } else {
    await Firebase.initializeApp();
  }
}
