import 'package:figmaa3/Screens/Register.dart';
import 'package:figmaa3/Screens/Signin.dart';
import 'package:flutter/material.dart';

import '../widgets/TextButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF2F2F2),
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/background.png",
                      ),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Center(
                      child: Image.asset(
                    "assets/images/Splash.png",
                    height: 100,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
                child: Text(
                  "Read more and stress less with our online book \n shopping app. Shop from anywhere you are and \n discover titles that you love. Happy reading!",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                    CustomText: "Get Started",
                    color: Colors.black,
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    }),
              ),
              Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          )),
    );
  }
}
