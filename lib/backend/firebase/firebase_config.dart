import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYsepyv_qJV5-GyUXc9p8oZODP42S0SlY",
            authDomain: "enpanatica23.firebaseapp.com",
            projectId: "enpanatica23",
            storageBucket: "enpanatica23.appspot.com",
            messagingSenderId: "41595062808",
            appId: "1:41595062808:web:bb324a3bc34f773e96d16d",
            measurementId: "G-4DD7VHGX4V"));
  } else {
    await Firebase.initializeApp();
  }
}
