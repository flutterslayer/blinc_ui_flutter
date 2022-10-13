import 'package:flutter/material.dart';

/// Creates pre defined styles for [Container] corner radius.
/// It can be used by the borderRadius argument at [BoxDecoration].
/// For example:
/// ```dart
///Container(
///  decoration: BoxDecoration(
///    borderRadius: BlincBorders.md,
///  ),
///);
/// ```

class BlincCornerRadius {
  ///The [sharp] size provides a non-corner [Container]
  static BorderRadiusGeometry sharp = BorderRadius.circular(0);

  ///The [sm] border size measures 0.5px
  static BorderRadiusGeometry sm = BorderRadius.circular(8);

  ///The [md] border size measures 1px
  static BorderRadiusGeometry md = BorderRadius.circular(16);

  ///The [lg] border size measures 2px
  static BorderRadiusGeometry lg = BorderRadius.circular(24);

  static BorderRadiusGeometry circle = BorderRadius.circular(9999);
}
