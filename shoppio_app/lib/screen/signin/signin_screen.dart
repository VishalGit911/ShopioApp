import 'package:flutter/material.dart';

import 'component/signin_body.dart';

class SigniScreen extends StatefulWidget {
  const SigniScreen({super.key});

  @override
  State<SigniScreen> createState() => _SigniScreenState();
}

class _SigniScreenState extends State<SigniScreen> {
  @override
  Widget build(BuildContext context) {
    return const SigninBody();
  }
}
