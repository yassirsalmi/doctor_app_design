import 'package:flutter/material.dart';

import '../utils/config.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: Config.screenHeight,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List<Widget>.generate(topDoctors.length, (index) {
                final doctors = topDoctors[index];
                return Card(
                  margin: const EdgeInsets.only(top: 20),
                  color: Config.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Config.widthSize * 0.2,
                          child: Image.asset(
                            doctors['image']!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctors['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              categorty[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
