import 'package:carousel_slider/carousel_slider.dart';
import 'package:figmaa3/widgets/LatestContainer.dart';
import 'package:figmaa3/widgets/TopContainer.dart';
import 'package:figmaa3/widgets/UpcomingContainer.dart';

import 'package:flutter/material.dart';

class HappyReading extends StatefulWidget {
  const HappyReading({super.key});

  @override
  State<HappyReading> createState() => _HappyReadingState();
}

class _HappyReadingState extends State<HappyReading> {
  List<Widget> carouselItems = [
    Image.asset("assets/images/block3.PNG"),
    Image.asset("assets/images/block3.PNG"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F2F2),
        title: Text(
          "Happy Reading!",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                enlargeCenterPage: true,
                // Set the desired options for the carousel
                height: 200, // Set the height of the carousel
                autoPlay: true, // Enable auto-play
                autoPlayCurve: Curves.easeInOut, // Set the auto-play curve

                aspectRatio: 2.0, // Set the auto-play animation duration
                // Set the aspect ratio of each item
                // You can also customize other options such as enlargeCenterPage, enableInfiniteScroll, etc.
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TopContainer(),

            // another
            SizedBox(
              height: 40,
            ),
            LatestContainer(),

            SizedBox(
              height: 40,
            ),
            UpcomingContainer(),
          ],
        ),
      ),
    );
  }
}
