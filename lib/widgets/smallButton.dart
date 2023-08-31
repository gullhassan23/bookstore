import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  final String CustomText;
  final VoidCallback ontap;
  final Color small;
  final Color color;
  const SmallButton({
    Key? key,
    required this.CustomText,
    required this.color,
    required this.small,
    required this.ontap,
  }) : super(key: key);

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: widget.ontap,
          child: Text(
            widget.CustomText,
            style: TextStyle(color: widget.small),
          ),
          style: ElevatedButton.styleFrom(
              side: BorderSide(width: 3, color: Colors.black),
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }
}
