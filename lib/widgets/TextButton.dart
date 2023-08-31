import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String CustomText;
  final VoidCallback ontap;
  final Color color;
  const CustomButton({
    Key? key,
    required this.CustomText,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 370,
        child: ElevatedButton(
          onPressed: widget.ontap,
          child: Text(
            widget.CustomText,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }
}
