import 'dart:async';

import 'package:flutter/material.dart';

import '../../onboarding/onboarding_screen.dart';

class SplaseBodyScreen extends StatefulWidget {
  const SplaseBodyScreen({super.key});

  @override
  State<SplaseBodyScreen> createState() => _SplaseBodyScreenState();
}

class _SplaseBodyScreenState extends State<SplaseBodyScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
          height: 250,
          width: 250,
        ),
      )),
    );
  }
}
