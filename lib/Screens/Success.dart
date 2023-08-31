import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 190,
            ),
            Image.asset("assets/images/check_box.png"),
            Text(
              "Payment Received!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your order has been validated",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
