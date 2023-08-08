import 'package:flutter/material.dart';

class PersonamHeader extends StatefulWidget {
  const PersonamHeader({super.key});

  @override
  State<PersonamHeader> createState() => _PersonamHeaderState();
}

class _PersonamHeaderState extends State<PersonamHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Username'),
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('assets/user_profile.jpg'),
        ),
      ],
    );
  }
}
