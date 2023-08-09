import 'package:flutter/material.dart';

import '../../utils/config.dart';

class Medium extends StatelessWidget {
  final String text; // Add this field to hold the text

  const Medium({required this.text, Key? key})
      : super(key: key); // Update the constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Config.primaryColor.shade300, spreadRadius: 3),
        ],
      ),
      width: Config.screenWidth! * 0.4,
      height: Config.screenHeight! * 0.06,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
