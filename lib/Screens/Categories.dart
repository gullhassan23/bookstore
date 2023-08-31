import 'package:figmaa3/widgets/GridWidget.dart';
// import 'package:figmaa3/widgets/filter.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffDEDEDE),
                            border: Border.all(color: Color(0xffDEDEDE))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Search Title/author/ISBN no",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffDEDEDE),
                            border: Border.all(color: Color(0xffDEDEDE))),
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Image.asset(
                                        "assets/images/Frame.png");
                                  });
                            },
                            icon: Icon(Icons.filter_alt))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [GridWidget()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
