import 'package:flutter/material.dart';

///Creates pre defined styles for [Container] shadows.
///It can be an item in the boxShadow argument at [BoxDecoration].
///For example:
///```dart
///Container(
///  decoration: const BoxDecoration(
///    boxShadow: [
///     BlincShadow.md,
///   ],
///  ),
///);
///```

class BlincShadow {
  ///The [zero] attribute provides a [Container] with no shadow
  static const BoxShadow zero = BoxShadow(
    blurRadius: 0,
    spreadRadius: 0,
  );

  ///The [sm] attribute provides a [Container] with a small shadow
  static const BoxShadow sm = BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 10,
    color: Color(0x30000000),
  );

  ///The [md] attribute provides a [Container] with a medium shadow
  static const BoxShadow md = BoxShadow(
    offset: Offset(2, 2),
    blurRadius: 10,
    color: Color(0x30000000),
  );

  ///The [lg] attribute provides a [Container] with a large shadow
  static const BoxShadow lg = BoxShadow(
    offset: Offset(6, 6),
    blurRadius: 10,
    color: Color(0x27000000),
  );

  ///The [xl] attribute provides a [Container] with an extra large shadow
  static const BoxShadow xl = BoxShadow(
    offset: Offset(10, 10),
    blurRadius: 32,
    color: Color(0x27000000),
  );

  ///The [huge] attribute provides a [Container] with a huge shadow
  static const BoxShadow huge = BoxShadow(
    offset: Offset(12, 12),
    blurRadius: 56,
    color: Color(0x1a000000),
  );
}
