import 'package:flutter/material.dart';

import '../../utils/config.dart';

class UserDetails extends StatelessWidget {
  final String data;
  const UserDetails({required this.data, Key? key}) : super(key: key);

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
      width: Config.screenWidth! * 0.8,
      height: Config.screenHeight! * 0.07,
      child: Center(
        child: Text(
          data,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
