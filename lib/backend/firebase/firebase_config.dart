import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC4ZoOp1t46KTNdMSScp8hLRMai2vCExQI",
            authDomain: "yourdigits.firebaseapp.com",
            projectId: "yourdigits",
            storageBucket: "yourdigits.firebasestorage.app",
            messagingSenderId: "531532020320",
            appId: "1:531532020320:web:94cfe2c706c81c47f46105"));
  } else {
    await Firebase.initializeApp();
  }
}
