import 'package:flutter/material.dart';

import '../components/profile_component/background_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 400,
          child: const Stack(
            alignment: Alignment.center,
            children: [
              BackgoundProfile(),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/user_profile.jpg'),
              ),
            ],
          ),
        )
      ]),
      // Container(
      //   child: BackgoundProfile(),
      // ),
    );
  }
}
