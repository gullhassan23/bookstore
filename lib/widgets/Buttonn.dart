import 'package:flutter/material.dart';

class CustomButtonn extends StatefulWidget {
  final String CustomText;
  final VoidCallback ontap;
  final Color color;
  const CustomButtonn({
    Key? key,
    required this.CustomText,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  @override
  State<CustomButtonn> createState() => _CustomButtonnState();
}

class _CustomButtonnState extends State<CustomButtonn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        height: 60,
        width: 370,
        child: ElevatedButton(
          onPressed: widget.ontap,
          child: Text(
            widget.CustomText,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }
}
