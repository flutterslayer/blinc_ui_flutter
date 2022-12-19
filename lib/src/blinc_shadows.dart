import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
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
  static BoxShadow sm = BoxShadow(
    offset: Offset(1.wsp, 1.hsp),
    blurRadius: 10,
    color: const Color(0x30000000),
  );

  ///The [md] attribute provides a [Container] with a medium shadow
  static BoxShadow md = BoxShadow(
    offset: Offset(2.wsp, 2.hsp),
    blurRadius: 10,
    color: const Color(0x30000000),
  );

  ///The [lg] attribute provides a [Container] with a large shadow
  static BoxShadow lg = BoxShadow(
    offset: Offset(6.wsp, 6.hsp),
    blurRadius: 10,
    color: const Color(0x27000000),
  );

  ///The [xl] attribute provides a [Container] with an extra large shadow
  static BoxShadow xl = BoxShadow(
    offset: Offset(10.wsp, 10.hsp),
    blurRadius: 32,
    color: const Color(0x27000000),
  );

  ///The [huge] attribute provides a [Container] with a huge shadow
  static BoxShadow huge = BoxShadow(
    offset: Offset(12.wsp, 12.hsp),
    blurRadius: 56,
    color: const Color(0x1a000000),
  );
}
