import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 34, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage('assets/default.jpg'),
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: 30,
                  ),
                ],
              ),
            ),
            //form signup name lastname email password birthday
          ],
        ),
      ),
    );
  }
}
