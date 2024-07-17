import 'package:flutter/material.dart';

Widget onBoardingContainer(int index) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: index == 0 ? 18 : 15,
          width: index == 0 ? 22 : 20,
          decoration: BoxDecoration(
              color: index == 0 ? Colors.blue.shade800 : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: index == 1 ? 18 : 15,
          width: index == 1 ? 22 : 20,
          decoration: BoxDecoration(
              color: index == 1 ? Colors.blue.shade800 : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: index == 2 ? 18 : 15,
          width: index == 2 ? 22 : 20,
          decoration: BoxDecoration(
              color: index == 2 ? Colors.blue.shade800 : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
        ),
      )
    ],
  );
}
