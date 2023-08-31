import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String small;
  final String author;
  final String price;

  const ProductCard({
    Key? key,
    required this.name,
    required this.imgUrl,
    required this.small,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Text(small), Text(name), Text(author), Text(price)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imgUrl),
        ));
  }
}
