import 'package:flutter/material.dart';

Widget signinFormFild(
    {required Widget suffixIcon,
    required bool obscureText,
    required controller,
    required String? errorText}) {
  return TextFormField(
    obscureText: obscureText,
    controller: controller,
    decoration: InputDecoration(
      errorText: errorText,
      border: null,
      suffixIcon: suffixIcon,
    ),
  );
}
