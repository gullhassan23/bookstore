import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  List<String> images = [
    "assets/images/grid1.PNG",
    "assets/images/grid2.PNG",
    "assets/images/grid3.PNG",
    "assets/images/grid4.PNG",
    "assets/images/grid5.PNG",
    "assets/images/grid6.PNG",
    "assets/images/grid7.PNG",
    "assets/images/grid8.PNG",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 4 / 3),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Center(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), border: Border.all()),
          child: Image.asset(images[index]),
        ));
      },
    );
  }
}
