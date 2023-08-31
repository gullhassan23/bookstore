import 'package:flutter/material.dart';

class UpcomingContainer extends StatelessWidget {
  const UpcomingContainer({super.key});

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
                      "Upcoming Books",
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
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    "assets/images/queen.PNG",
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
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
