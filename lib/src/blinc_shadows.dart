import 'package:flutter/material.dart';

class BlincShadow {
  static const BoxShadow zero = BoxShadow(
    blurRadius: 0,
    spreadRadius: 0,
  );
  static const BoxShadow sm = BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 10,
    color: Color(0x30000000),
  );
  static const BoxShadow md = BoxShadow(
    offset: Offset(2, 2),
    blurRadius: 10,
    color: Color(0x30000000),
  );
  static const BoxShadow lg = BoxShadow(
    offset: Offset(6, 6),
    blurRadius: 10,
    color: Color(0x27000000),
  );
  static const BoxShadow xl = BoxShadow(
    offset: Offset(10, 10),
    blurRadius: 32,
    color: Color(0x27000000),
  );
  static const BoxShadow huge = BoxShadow(
    offset: Offset(12, 12),
    blurRadius: 56,
    color: Color(0x1a000000),
  );
}
