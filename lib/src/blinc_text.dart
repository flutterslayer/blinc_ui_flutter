import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

/// BlincText will create a text widget with pre-built styles. They can be
/// composed with weight, size and height.
///
/// Example:
/// ```dart
/// BlincText('Proxima Nova').weightThin.heightXXS.sizeXXXS,
/// ```
//ignore: must_be_immutable
class BlincText extends BaseBlincText {
  BlincText(
    this.text, {
    this.textAlign,
    this.style,
    Key? key,
  }) : super(key: key);

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'proxima_nova_font',
        fontWeight: _fontWeight,
        fontSize: _fontSize,
        height: _fontHeight,
        color: style == null ? null : style!.color,
      ),
    );
  }
}

//ignore: must_be_immutable
abstract class BaseBlincText extends StatelessWidget {
  BaseBlincText({super.key});

  FontWeight _fontWeight = FontWeight.w400;
  double _fontSize = 16.wsp;
  double _fontHeight = 0;
  double _realFontHeight = 0;

  ///Defines a w100 font weight for BlincText
  BaseBlincText get weightThin {
    _fontWeight = FontWeight.w100;
    return this;
  }

  ///Defines a w300 font weight for BlincText
  BaseBlincText get weightLight {
    _fontWeight = FontWeight.w300;
    return this;
  }

  ///Defines a w400 font weight for BlincText
  BaseBlincText get weightRegular {
    _fontWeight = FontWeight.w400;
    return this;
  }

  ///Defines a w500 font weight for BlincText
  BaseBlincText get weightMedium {
    _fontWeight = FontWeight.w500;
    return this;
  }

  ///Defines a w600 font weight for BlincText
  BaseBlincText get weightSemiBold {
    _fontWeight = FontWeight.w600;
    return this;
  }

  ///Defines a w700 font weight for BlincText
  BaseBlincText get weightBold {
    _fontWeight = FontWeight.w700;
    return this;
  }

  ///Defines a w800 font weight for BlincText
  BaseBlincText get weightExtraBold {
    _fontWeight = FontWeight.w800;
    return this;
  }

  ///Defines a w900 font weight for BlincText
  BaseBlincText get weightBlack {
    _fontWeight = FontWeight.w900;
    return this;
  }

  ///Defines a 10 font size for BlincText
  BaseBlincText get sizeXXXS {
    _fontSize = 10.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 12 font size for BlincText
  BaseBlincText get sizeXXS {
    _fontSize = 12.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 14 font size for BlincText
  BaseBlincText get sizeXS {
    _fontSize = 14.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 16 font size for BlincText
  BaseBlincText get sizeSM {
    _fontSize = 16.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 20 font size for BlincText
  BaseBlincText get sizeMD {
    _fontSize = 20.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 24 font size for BlincText
  BaseBlincText get sizeLG {
    _fontSize = 24.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 28 font size for BlincText
  BaseBlincText get sizeXL {
    _fontSize = 28.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 32 font size for BlincText
  BaseBlincText get sizeXXL {
    _fontSize = 32.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 40 font size for BlincText
  BaseBlincText get sizeXXXL {
    _fontSize = 40.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 48 font size for BlincText
  BaseBlincText get sizeHuge {
    _fontSize = 48.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 56 font size for BlincText
  BaseBlincText get sizeXHuge {
    _fontSize = 56.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a 64 font size for BlincText
  BaseBlincText get sizeXXHuge {
    _fontSize = 64.wsp;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  void _calculateFontHeight({required int newFontHeight}) {
    if (newFontHeight == 0) return;
    _realFontHeight = newFontHeight.toDouble();
    _fontHeight = newFontHeight / _fontSize;
    if (_fontHeight < 1) {
      throw Exception(
          "The value of line height can't be less than font height");
    }
  }

  ///Defines a 12 line height font size for BlincText
  BaseBlincText get heightXXXS {
    _calculateFontHeight(newFontHeight: 12);
    return this;
  }

  ///Defines a 16 line height font size for BlincText
  BaseBlincText get heightXXS {
    _calculateFontHeight(newFontHeight: 16);
    return this;
  }

  ///Defines a 20 height font size for BlincText
  BaseBlincText get heightXS {
    _calculateFontHeight(newFontHeight: 20);
    return this;
  }

  ///Defines a 24 line height font size for BlincText
  BaseBlincText get heightSM {
    _calculateFontHeight(newFontHeight: 24);
    return this;
  }

  ///Defines a 28 line height font size for BlincText
  BaseBlincText get heightMD {
    _calculateFontHeight(newFontHeight: 28);
    return this;
  }

  ///Defines a 32 line height font size for BlincText
  BaseBlincText get heightLG {
    _calculateFontHeight(newFontHeight: 32);
    return this;
  }

  ///Defines a 40 line height font size for BlincText
  BaseBlincText get heightXL {
    _calculateFontHeight(newFontHeight: 40);
    return this;
  }

  ///Defines a 48 line height font size for BlincText
  BaseBlincText get heightXXL {
    _calculateFontHeight(newFontHeight: 48);
    return this;
  }

  ///Defines a 56 line height font size for BlincText
  BaseBlincText get heightXXXL {
    _calculateFontHeight(newFontHeight: 56);
    return this;
  }

  ///Defines a 64 line height font size for BlincText
  BaseBlincText get heightHuge {
    _calculateFontHeight(newFontHeight: 64);
    return this;
  }

  ///Defines a 72 line height font size for BlincText
  BaseBlincText get heightXHuge {
    _calculateFontHeight(newFontHeight: 72);
    return this;
  }
}
