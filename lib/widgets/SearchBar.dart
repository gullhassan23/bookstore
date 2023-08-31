import 'package:flutter/material.dart';

class CustomSearch extends StatefulWidget {
  final TextEditingController textEditingController;
  final Icon icons;
  final String hintText;
  const CustomSearch({
    Key? key,
    required this.textEditingController,
    required this.icons,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffDEDE),
          border: Border.all(color: Color(0xffDEDEDE))),
      child: TextFormField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: IconButton(onPressed: () {}, icon: widget.icons),
          // fillColor: Color(0xffDEDEDE),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
