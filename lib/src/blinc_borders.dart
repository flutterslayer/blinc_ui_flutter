import 'package:flutter/material.dart';

/// Creates pre defined styles for [Container] borders.
/// It can be used by the border argument at [BoxDecoration].
/// For example:
/// ```dart
///Container(
///  decoration: BoxDecoration(
///    border: BlincBorders.md,
///  ),
///);
/// ```

class BlincBorders {
  ///The default blinc border [_color]
  static const _color = Color(0xff858583);

  ///The [zero] size provides a non-border [Container]
  static BoxBorder zero = Border.all(
    width: 0,
  );

  ///The [sm] border size measures 0.5px
  static BoxBorder sm = Border.all(
    color: _color,
    width: 0.5,
  );

  ///The [md] border size measures 1px
  static BoxBorder md = Border.all(
    color: _color,
    width: 1,
  );

  ///The [lg] border size measures 2px
  static BoxBorder lg = Border.all(
    color: _color,
    width: 2,
  );
}
