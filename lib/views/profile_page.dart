import 'package:doctor_app_design/components/profile_component/bih_container.dart';
import 'package:doctor_app_design/components/profile_component/medium_container.dart';
import 'package:doctor_app_design/components/profile_component/small_container.dart';
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
      body: Column(
        children: [
          Stack(children: [
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
            ),
          ]),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Statistiques(),
              Statistiques(),
              Statistiques(),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const UserDetails(
            data: 'Username',
          ),
          const SizedBox(
            height: 8,
          ),
          const UserDetails(
            data: 'Email@gmail.com',
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Medium(text: 'Edit'),
              Medium(text: 'logout'),
            ],
          )
        ],
      ),
    );
  }
}
