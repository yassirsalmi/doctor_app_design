// ignore_for_file: avoid_unnecessary_containers

import 'package:doctor_app_design/utils/config.dart';
import 'package:flutter/material.dart';

class BackgoundProfile extends StatelessWidget {
  const BackgoundProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
          size: const Size(400, 300),
          painter: CurvedPainter(),
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Config.primaryColor.shade200
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.6,
        size.width * 0.5, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.6,
        size.width * 1.0, size.height * 0.4);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
