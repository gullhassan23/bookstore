import 'package:figmaa3/Screens/Register.dart';
import 'package:figmaa3/widgets/TextButton.dart';
import 'package:figmaa3/widgets/TextFormField.dart';
import 'package:figmaa3/widgets/ss.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController email = TextEditingController();
  final TextEditingController passcode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Color(0xffF2F2F2),
        centerTitle: true,
        title: Text(
          "Get Started",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Please fill your details to login",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomTextField(
                icons: Icon(Icons.email),
                textEditingController: email,
                hintText: "Username/email",
                obscureText: false),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
              left: 18.0,
              right: 18,
            ),
            child: CustomTextField(
                icons: Icon(Icons.remove_red_eye),
                textEditingController: passcode,
                hintText: "Password",
                obscureText: true),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              CustomText: "Get Started",
              color: Colors.black,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomBar()));
              }),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Forgot password?",
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: [
                Text("New member?"),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text("Register"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
