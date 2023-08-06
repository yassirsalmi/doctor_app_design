import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  Timer startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, login);
  }

  login() {
    Navigator.pushReplacementNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Lottie.asset('assets/animation.json'),
        ),
      ),
    );
  }
}
