import 'package:flutter/material.dart';

Widget forgatecomman(
    {required labelText,
    required suffixIcon,
    required obscureText,
    required errorText,
    required controller}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      onSaved: (newValue) {
        obscureText = newValue!;
      },
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          errorText: errorText,
          labelText: labelText,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}
