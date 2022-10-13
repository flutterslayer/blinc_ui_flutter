import 'package:flutter/material.dart';

class BlincProgressBar extends StatelessWidget {
  /// The progress indicator's color
  final Color color;

  /// Defines the progress indicator's width
  final double width;

  /// Defines the progress indicator's height
  final double height;

  /// Defines the progress indicator's radius
  final double radius;

  /// Defines the loading ratio of the progress bar
  final double percent;

  const BlincProgressBar({
    Key? key,
    required this.color,
    required this.width,
    required this.height,
    required this.radius,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,

          /// Allows to draw a progress bar in different ways
          decoration: BoxDecoration(
            color: color,
            border: Border.all(),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        Positioned(
            child: Container(
          /// Shows the loading percentage
          width: width * percent,
          height: height,
          decoration: BoxDecoration(
            color: color,
          ),
        )),
      ],
    );
  }
}
