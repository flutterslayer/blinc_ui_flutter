import 'package:flutter/material.dart';

class BlincBorders {
  static const color = Color(0xff858583);

  static BoxBorder zero = Border.all(
    width: 0,
  );

  static BoxBorder sm = Border.all(
    color: color,
    width: 0.5,
  );

  static BoxBorder md = Border.all(
    color: color,
    width: 1,
  );

  static BoxBorder lg = Border.all(
    color: color,
    width: 2,
  );
}
