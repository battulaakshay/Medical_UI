// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalapp/util/category_cart.dart';
import 'package:medicalapp/util/doctor_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Akshay',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Fill out your medical card right now',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Get Strarted',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //search bar
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.deepPurple[100],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How can we help you",
                      prefixIcon: Icon(Icons.search)),
                ),
              )),
          //end of search bar
          //horizontal list view teeth,surgeon,.....
          SizedBox(
            height: 25,
          ),
          Container(
            height: 80,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              CategoryCart(
                categoryName: 'Dentist',
                iconImagepath: 'lib/icons/tooth1.png',
              ),
              CategoryCart(
                categoryName: 'Surgeon',
                iconImagepath: 'lib/icons/surgeon1.png',
              ),
              CategoryCart(
                categoryName: 'pharmacist',
                iconImagepath: 'lib/icons/medical.png',
              ),
            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctor List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DoctorCard(
                doctorImagePath: 'lib/icons/doctor1.png',
                rating: '4.9',
                doctorName: 'Dr.Bhanu',
                doctorProfession: 'Therapist',
              ),
              DoctorCard(
                doctorImagePath: 'lib/icons/doctor22.png',
                rating: '4.3',
                doctorName: 'Dr.Akshay',
                doctorProfession: 'Psychologsits',
              ),
              DoctorCard(
                doctorImagePath: 'lib/icons/doctor33.png',
                rating: '5.0',
                doctorName: 'Dr.Sai',
                doctorProfession: 'Surgeon',
              )
            ],
          ))
        ]),
      ),
    );
  }
}
