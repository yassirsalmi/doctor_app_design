import 'package:doctor_app_design/views/home_page.dart';
import 'package:doctor_app_design/views/login.dart';
import 'package:doctor_app_design/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'doctor_app_design',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splach(),
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomePage(),
      },
    );
  }
}
