import 'package:figmaa3/widgets/Buttonn.dart';
import 'package:figmaa3/widgets/TextButton.dart';
import 'package:figmaa3/widgets/filter.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F2F2),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
              child: Text(
                "Delivering Address",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Image.asset("assets/images/Address.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonn(
                CustomText: "Add a New Address",
                color: Colors.white,
                ontap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Filter();
                      });
                }),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Payment Method",
                      style: TextStyle(fontSize: 30),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: "Credit",
                          groupValue: payment,
                          onChanged: (value) {
                            setState(() {
                              payment = value.toString();
                            });
                          },
                        ),
                        Text(
                          "Credit Card",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 5),
                child: Row(
                  children: [
                    Radio(
                        value: "paypal",
                        groupValue: payment,
                        onChanged: (value) {
                          setState(() {
                            payment = value.toString();
                          }); //selected value
                        }),
                    Text(
                      "Cash on delivery",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 110,
          ),
          CustomButton(
              CustomText: "Pay \$60.00", color: Colors.black, ontap: () {})
        ],
      ),
    );
  }
}
