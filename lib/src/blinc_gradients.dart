import 'package:flutter/material.dart';

class BlincGradients {
  static const radial = RadialGradient(radius: 0.4, colors: [
    Color(0xFFCEC619),
    Color(0xFFFE9E0F),
    Color(0xFF69F5CB),
    Color(0xFF53C1BD),
    Color(0xFF00A3FF),
    Color(0xFF0094FF),
  ], stops: [
    1.0,
    1.0,
    1.0,
    0,
    1.0,
    0,
  ]);
}
