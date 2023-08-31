import 'package:figmaa3/widgets/CustomTextForm.dart';
import 'package:figmaa3/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                margin: EdgeInsets.all(10.0),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 28, right: 28, top: 8, bottom: 2),
              child: CustomText(
                  textEditingController: name,
                  hintText: "Name",
                  obscureText: false),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 28, right: 28, top: 8, bottom: 2),
              child: CustomText(
                  textEditingController: email,
                  hintText: "Email",
                  obscureText: false),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 28, right: 28, top: 8, bottom: 2),
              child: CustomText(
                  textEditingController: password,
                  hintText: "Password",
                  obscureText: true),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 28, right: 28, top: 8, bottom: 2),
              child: CustomText(
                  textEditingController: address,
                  hintText: "Address",
                  obscureText: false),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, top: 18, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallButton(
                      small: Colors.white,
                      CustomText: "Add",
                      color: Colors.black,
                      ontap: () {}),
                  SmallButton(
                      small: const Color.fromARGB(255, 160, 128, 128),
                      CustomText: "Cancel",
                      color: Colors.white,
                      ontap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
