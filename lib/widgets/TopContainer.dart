import 'package:figmaa3/Screens/Product.dart';
import 'package:figmaa3/widgets/smallContainer.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Top Books",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "see more",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: SmallContainer(
                      CustomText: "This Week",
                      color: Colors.black,
                      small: Colors.white,
                      ontap: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: SmallContainer(
                      CustomText: "ThisMonth",
                      color: Colors.white,
                      small: Colors.black,
                      ontap: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: SmallContainer(
                      CustomText: "This Year",
                      color: Colors.white,
                      small: Colors.black,
                      ontap: () {}),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 190,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                    child: Image.asset(
                      "assets/images/tp.PNG",
                      height: 250,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/Niar.PNG",
                    height: 250,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
