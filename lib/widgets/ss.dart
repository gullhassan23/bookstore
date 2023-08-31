import 'package:figmaa3/Screens/Account.dart';
import 'package:figmaa3/Screens/Cart.dart';
import 'package:figmaa3/Screens/Categories.dart';
import 'package:figmaa3/Screens/HappyReading.dart';

import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.black,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.category,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.category,
              color: Colors.black,
            ),
            label: 'Category',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        HappyReading(),
        Categories(),
        Cart(),
        Account(),
      ][currentPageIndex],
    );
  }
}
