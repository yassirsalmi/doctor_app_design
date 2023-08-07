import 'package:doctor_app_design/components/Category_row.dart';
import 'package:doctor_app_design/components/personnal_header.dart';
import 'package:doctor_app_design/components/top_doctors.dart';
import 'package:doctor_app_design/utils/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonamHeader(),
              Config.smallSpace,
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Config.smallSpace,
              CategoryRow(),
              Config.smallSpace,
              TopDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
