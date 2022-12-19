import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

/// Aligns the logo vertically or horizontally
enum LogoOrientation {
  vertical,
  horizontal,
}

/// Selects the logo theme
enum LogoTheme {
  standard,
  white,
}

/// Creates a BlincSymbol object.
///
/// By default the width is fixed. You can change the fixed size by
/// assigning a [width].
///
/// Themes can be changed through the [logoTheme] attribute. It accepts a
/// LogoTheme where you can select the desired theme.
class BlincSymbol extends StatelessWidget {
  const BlincSymbol({
    Key? key,
    this.logoTheme,
    this.width,
  }) : super(key: key);

  /// Assigns a theme to the logo
  final LogoTheme? logoTheme;

  /// Defines the width of the logo
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Assigns the custom width or the standard
      width: width?.wsp ?? 80.wsp,
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(
          // Assigns default or alternative theme
          logoTheme == LogoTheme.white
              ? 'assets/images/symbol-alt.png'
              : 'assets/images/symbol.png',
          package: 'blinc_ui_flutter',
        ),
      ),
    );
  }
}

/// Creates a BlincLogo object.
///
/// By default, the layout is horizontal and the sizes are fixed.
///
/// To change the logo orientation use [logoOrientation]. It accepts a
/// LogoOrientation which can be horizontal or vertical.
///
/// You can change the fixed size by assigning a [width].
///
/// Themes can be changed through the [logoTheme] attribute. It accepts a
/// LogoTheme where you can select the desired theme.
class BlincLogo extends StatelessWidget {
  const BlincLogo({
    Key? key,
    this.logoOrientation,
    this.logoTheme,
    this.width,
  }) : super(key: key);

  /// Defines which will be the orientation of the logo. Can be vertical or
  /// horizontal
  final LogoOrientation? logoOrientation;

  /// Assigns a theme to the logo
  final LogoTheme? logoTheme;

  /// Defines the width of the logo
  final double? width;

  @override
  Widget build(BuildContext context) {
    // Checks if it's vertical
    if (logoOrientation == LogoOrientation.vertical) {
      return _verticalLogo(
        logoTheme: logoTheme,
        width: width?.wsp,
      );
    }
    // Checks if it's horizontal
    if (logoOrientation == LogoOrientation.horizontal) {
      return _horizontalLogo(
        logoTheme: logoTheme,
        width: width,
      );
    }

    // Returns default (horizontal)
    return _horizontalLogo(
      logoTheme: logoTheme,
      width: width,
    );
  }
}

Widget _horizontalLogo({
  required LogoTheme? logoTheme,
  required double? width,
}) {
  return SizedBox(
    // Assigns the custom width or the standard
    width: width ?? 288,
    child: Image(
      fit: BoxFit.contain,
      image: AssetImage(
        // Assigns default or alternative theme
        logoTheme == LogoTheme.white
            ? 'assets/images/logo-alt.png'
            : 'assets/images/logo.png',
        package: 'blinc_ui_flutter',
      ),
    ),
  );
}

Widget _verticalLogo({
  required LogoTheme? logoTheme,
  required double? width,
}) {
  return SizedBox(
    // Assigns the custom width or the standard
    width: width ?? 187,
    child: Image(
      fit: BoxFit.contain,
      image: AssetImage(
        // Assigns default or alternative theme
        logoTheme == LogoTheme.white
            ? 'assets/images/logo-vertical-alt.png'
            : 'assets/images/logo-vertical.png',
        package: 'blinc_ui_flutter',
      ),
    ),
  );
}
