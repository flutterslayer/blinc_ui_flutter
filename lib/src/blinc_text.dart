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
  double _fontSize = 16;
  double _fontHeight = 0;
  double _realFontHeight = 0;

  ///Defines a thin font weight for BlincText
  BaseBlincText get weightThin {
    _fontWeight = FontWeight.w100;
    return this;
  }

  ///Defines a light font weight for BlincText
  BaseBlincText get weightLight {
    _fontWeight = FontWeight.w300;
    return this;
  }

  ///Defines a regular font weight for BlincText
  BaseBlincText get weightRegular {
    _fontWeight = FontWeight.w400;
    return this;
  }

  ///Defines a medium font weight for BlincText
  BaseBlincText get weightMedium {
    _fontWeight = FontWeight.w500;
    return this;
  }

  ///Defines a semi bold font weight for BlincText
  BaseBlincText get weightSemiBold {
    _fontWeight = FontWeight.w600;
    return this;
  }

  ///Defines a bold font weight for BlincText
  BaseBlincText get weightBold {
    _fontWeight = FontWeight.w700;
    return this;
  }

  ///Defines a extra bold  font weight for BlincText
  BaseBlincText get weightExtraBold {
    _fontWeight = FontWeight.w800;
    return this;
  }

  ///Defines a black font weight for BlincText
  BaseBlincText get weightBlack {
    _fontWeight = FontWeight.w900;
    return this;
  }

  ///Defines a extra extra extra small font size for BlincText
  BaseBlincText get sizeXXXS {
    _fontSize = 10;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra extra small font size for BlincText
  BaseBlincText get sizeXXS {
    _fontSize = 12;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra small font size for BlincText
  BaseBlincText get sizeXS {
    _fontSize = 14;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a small font size for BlincText
  BaseBlincText get sizeSM {
    _fontSize = 16;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a medium font size for BlincText
  BaseBlincText get sizeMD {
    _fontSize = 20;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a large font size for BlincText
  BaseBlincText get sizeLG {
    _fontSize = 24;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra large font size for BlincText
  BaseBlincText get sizeXL {
    _fontSize = 28;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra extra large font size for BlincText
  BaseBlincText get sizeXXL {
    _fontSize = 32;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra extra extra large font size for BlincText
  BaseBlincText get sizeXXXL {
    _fontSize = 40;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a huge font size for BlincText
  BaseBlincText get sizeHuge {
    _fontSize = 48;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra huge font size for BlincText
  BaseBlincText get sizeXHuge {
    _fontSize = 56;
    _calculateFontHeight(newFontHeight: _realFontHeight.toInt());
    return this;
  }

  ///Defines a extra extra huge font size for BlincText
  BaseBlincText get sizeXXHuge {
    _fontSize = 64;
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

  ///Defines a extra extra extra small line height font size for BlincText
  BaseBlincText get heightXXXS {
    _calculateFontHeight(newFontHeight: 12);
    return this;
  }

  ///Defines a extra extra small line height font size for BlincText
  BaseBlincText get heightXXS {
    _calculateFontHeight(newFontHeight: 16);
    return this;
  }

  ///Defines a extra small line height font size for BlincText
  BaseBlincText get heightXS {
    _calculateFontHeight(newFontHeight: 20);
    return this;
  }

  ///Defines a small line height font size for BlincText
  BaseBlincText get heightSM {
    _calculateFontHeight(newFontHeight: 24);
    return this;
  }

  ///Defines a medium line height font size for BlincText
  BaseBlincText get heightMD {
    _calculateFontHeight(newFontHeight: 28);
    return this;
  }

  ///Defines a large line height font size for BlincText
  BaseBlincText get heightLG {
    _calculateFontHeight(newFontHeight: 32);
    return this;
  }

  ///Defines a extra large line height font size for BlincText
  BaseBlincText get heightXL {
    _calculateFontHeight(newFontHeight: 40);
    return this;
  }

  ///Defines a extra extra large line height font size for BlincText
  BaseBlincText get heightXXL {
    _calculateFontHeight(newFontHeight: 48);
    return this;
  }

  ///Defines a extra extra extra large line height font size for BlincText
  BaseBlincText get heightXXXL {
    _calculateFontHeight(newFontHeight: 56);
    return this;
  }

  ///Defines a huge line height font size for BlincText
  BaseBlincText get heightHuge {
    _calculateFontHeight(newFontHeight: 64);
    return this;
  }

  ///Defines a extra huge line height font size for BlincText
  BaseBlincText get heightXHuge {
    _calculateFontHeight(newFontHeight: 72);
    return this;
  }
}
