import 'package:doctor_app_design/utils/config.dart';
import 'package:flutter/material.dart';

import '../components/home_page_component/Category_row.dart';
import '../components/home_page_component/personnal_header.dart';
import '../components/home_page_component/top_doctors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Config().init(context);
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
