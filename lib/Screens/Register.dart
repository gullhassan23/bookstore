import 'package:figmaa3/Screens/Signin.dart';
import 'package:figmaa3/widgets/CustomTextForm.dart';
import 'package:figmaa3/widgets/TextButton.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F2F2),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Register",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Please fill your details to signup",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 5),
            child: CustomText(
                textEditingController: username,
                hintText: "Username",
                obscureText: false),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 5),
            child: CustomText(
                textEditingController: email,
                hintText: "Email",
                obscureText: false),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 5),
            child: CustomText(
                textEditingController: password,
                hintText: "Password",
                obscureText: true),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 5),
            child: CustomText(
                textEditingController: confirmPassword,
                hintText: "Confirm Password",
                obscureText: true),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
              child: CustomButton(
                  CustomText: "Register", color: Colors.black, ontap: () {})),
          SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: [
                Text("Already a  member?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "SignIn",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
