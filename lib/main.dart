import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maxi_app6_chat_app/screens/auth_screen.dart';
import 'package:maxi_app6_chat_app/screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, appSnapshot) {
          return MaterialApp(
            title: 'FlutterChat',
            // theme: ThemeData(
            //   primarySwatch: Colors.pink,
            //   backgroundColor: Colors.pink,
            //   accentColor: Colors.deepPurple,
            //   accentColorBrightness: Brightness.dark,
            //   buttonTheme: ButtonTheme.of(context).copyWith(
            //     buttonColor: Colors.pink,
            //     textTheme: ButtonTextTheme.primary,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //   ),
            // ),
            home: AuthScreen(),
          );
        });
  }
}
