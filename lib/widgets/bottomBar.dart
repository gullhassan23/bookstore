import 'package:figmaa3/Screens/Product.dart';
import 'package:flutter/material.dart';

class BottomW extends StatefulWidget {
  const BottomW({super.key});

  @override
  State<BottomW> createState() => _BottomWState();
}

class _BottomWState extends State<BottomW> {
  int current = 0;
  final tabs = [
    Product(),
    Product(),
    Product(),
    Text("Account"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Group29.png",
              height: 30,
              width: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Group28.png",
              height: 30,
              width: 50,
            ),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: tabs[current],
    );
  }
}
