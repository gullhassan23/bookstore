import 'package:figmaa3/widgets/CustomTextForm.dart';
import 'package:figmaa3/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final TextEditingController address = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController postalCode = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: CustomText(
              textEditingController: address,
              hintText: "Street Address",
              obscureText: false),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
          child: CustomText(
              textEditingController: city,
              hintText: "City",
              obscureText: false),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
          child: CustomText(
              textEditingController: postalCode,
              hintText: "Postal Code",
              obscureText: false),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Checkbox(
                  // checkColor: Colors.black,
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),
              Text("Save this Address")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallButton(
                  small: Colors.white,
                  CustomText: "Add",
                  color: Colors.black,
                  ontap: () {}),
              SmallButton(
                  small: Colors.black,
                  CustomText: "Cancel",
                  color: Colors.white,
                  ontap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
