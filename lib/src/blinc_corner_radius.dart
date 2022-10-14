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

  ///The [sm] corner radius size renders a [Container] that has all radii with circular(8px)
  static BorderRadiusGeometry sm = BorderRadius.circular(8);

  ///The [md] corner radius size renders a [Container] that has all radii with  circular(16px)
  static BorderRadiusGeometry md = BorderRadius.circular(16);

  ///The [lg] corner radius size renders a [Container] that has all radii with  circular(24px)
  static BorderRadiusGeometry lg = BorderRadius.circular(24);

  ///The [circle] corner radius renders a [Container] that is a circle
  static BorderRadiusGeometry circle = BorderRadius.circular(9999);
}
