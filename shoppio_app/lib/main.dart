import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppio_app/route/project_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyCMWjrdnMV29LYPll1065CxXW1HoLe5O3U",
    appId: "1:326481926691:android:3dd7dd80915b1cc4ad2f96",
    messagingSenderId: "326481926691",
    projectId: "shoppio-353dc",
    storageBucket: "shoppio-353dc.appspot.com",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: AppRoute.splash,
    );
  }
}
