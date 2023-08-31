import 'package:flutter/material.dart';

class SmallContainer extends StatefulWidget {
  final String CustomText;
  final VoidCallback ontap;
  final Color small;
  final Color color;
  const SmallContainer({
    Key? key,
    required this.CustomText,
    required this.color,
    required this.small,
    required this.ontap,
  }) : super(key: key);

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        height: 50,
        width: 100,
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
