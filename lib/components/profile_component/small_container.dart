import 'package:doctor_app_design/utils/config.dart';
import 'package:flutter/material.dart';

class Statistiques extends StatelessWidget {
  const Statistiques({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('appointment'),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Config.primaryColor.shade300, spreadRadius: 3),
            ],
          ),
          width: Config.screenWidth! * 0.12,
          height: Config.screenHeight! * 0.05,
          child: const Center(
            child: Text('0'),
          ),
        ),
      ],
    );
  }
}
