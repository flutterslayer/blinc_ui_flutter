import 'package:flutter/material.dart';

class BlincProgressBar extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double radius;

  const BlincProgressBar(
      {Key? key,
      required this.color,
      required this.width,
      required this.height,
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        Positioned(
            child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
          ),
        )),
      ],
    );
  }
}
