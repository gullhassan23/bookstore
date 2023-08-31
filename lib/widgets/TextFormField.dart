import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obscureText;
  final Icon icons;
  final int lines;
  const CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.obscureText,
    required this.icons,
    this.lines = 1,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3, bottom: 4),
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: IconButton(onPressed: () {}, icon: widget.icons),
          fillColor: Color(0xffDEDEDE),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide()),
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "Enter yout ${widget.hintText}";
          }
          return null;
        },
        maxLines: widget.lines,
      ),
    );
  }
}
