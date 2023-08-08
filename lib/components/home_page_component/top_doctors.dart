import 'package:doctor_app_design/components/home_page_component/doctor_card.dart';
import 'package:flutter/material.dart';

import '../../utils/config.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({super.key});

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  List<Map<String, String>> topDoctors = [
    {
      "name": "Doctor1",
      "image": "assets/doctors/doctor1.jpg",
    },
    {
      "name": "Doctor2",
      "image": "assets/doctors/doctor2.jpg",
    },
    {
      "name": "Doctor3",
      "image": "assets/doctors/doctor3.jpg",
    },
    {
      "name": "Doctor4",
      "image": "assets/doctors/doctor4.jpg",
    },
    {
      "name": "Doctor1",
      "image": "assets/doctors/doctor1.jpg",
    },
    {
      "name": "Doctor2",
      "image": "assets/doctors/doctor2.jpg",
    },
    {
      "name": "Doctor3",
      "image": "assets/doctors/doctor3.jpg",
    },
    {
      "name": "Doctor4",
      "image": "assets/doctors/doctor4.jpg",
    },
    {
      "name": "Doctor2",
      "image": "assets/doctors/doctor2.jpg",
    },
    {
      "name": "Doctor3",
      "image": "assets/doctors/doctor3.jpg",
    },
    {
      "name": "Doctor4",
      "image": "assets/doctors/doctor4.jpg",
    },
  ];
  List<String> categorty = [
    "General",
    "Cardiology",
    "Respirations",
    "Dermatology",
    "Gynecology",
    "Gynecology",
    "Gynecology",
    "Dental",
    "Gynecology",
    "Gynecology",
    "Dental",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Config.screenHeight,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: topDoctors.length,
              itemBuilder: (BuildContext context, int index) {
                final doctors = topDoctors[index];
                return DoctorCard(
                  category: categorty[index],
                  image: doctors['image']!,
                  name: doctors['name']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
