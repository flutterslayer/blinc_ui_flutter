import 'package:flutter/material.dart';

class BlincText extends BaseBlincText {
  BlincText(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'proxima_nova_font',
        fontWeight: fontWeight,
        fontSize: fontSize,
        height: fontHeight,
      ),
    );
  }
}

abstract class BaseBlincText extends StatelessWidget {
  BaseBlincText({super.key});

  FontWeight fontWeight = FontWeight.w400;
  double fontSize = 16;
  double fontHeight = 0;
  double realFontHeight = 0;

  BaseBlincText get weightThin {
    fontWeight = FontWeight.w100;
    return this;
  }

  BaseBlincText get weightLight {
    fontWeight = FontWeight.w300;
    return this;
  }

  BaseBlincText get weightRegular {
    fontWeight = FontWeight.w400;
    return this;
  }

  BaseBlincText get weightMedium {
    fontWeight = FontWeight.w500;
    return this;
  }

  BaseBlincText get weightSemiBold {
    fontWeight = FontWeight.w600;
    return this;
  }

  BaseBlincText get weightBold {
    fontWeight = FontWeight.w700;
    return this;
  }

  BaseBlincText get weightExtraBold {
    fontWeight = FontWeight.w800;
    return this;
  }

  BaseBlincText get weightBlack {
    fontWeight = FontWeight.w900;
    return this;
  }

  BaseBlincText get sizeXXXS {
    fontSize = 10;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXXS {
    fontSize = 12;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXS {
    fontSize = 14;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeSM {
    fontSize = 16;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeMD {
    fontSize = 20;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeLG {
    fontSize = 24;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXL {
    fontSize = 28;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXXL {
    fontSize = 32;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXXXL {
    fontSize = 40;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeHuge {
    fontSize = 48;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXHuge {
    fontSize = 56;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  BaseBlincText get sizeXXHuge {
    fontSize = 64;
    _calculateFontHeight(newFontHeight: realFontHeight.toInt());
    return this;
  }

  void _calculateFontHeight({required int newFontHeight}) {
    if (newFontHeight == 0) return;
    realFontHeight = newFontHeight.toDouble();
    fontHeight = newFontHeight / fontSize;
    if (fontHeight < 1) {
      throw Exception(
          "The value of line height can't be less than font height");
    }
  }

  BaseBlincText get heightXXXS {
    _calculateFontHeight(newFontHeight: 12);
    return this;
  }

  BaseBlincText get heightXXS {
    _calculateFontHeight(newFontHeight: 16);
    return this;
  }

  BaseBlincText get heightXS {
    _calculateFontHeight(newFontHeight: 20);
    return this;
  }

  BaseBlincText get heightSM {
    _calculateFontHeight(newFontHeight: 24);
    return this;
  }

  BaseBlincText get heightMD {
    _calculateFontHeight(newFontHeight: 28);
    return this;
  }

  BaseBlincText get heightLG {
    _calculateFontHeight(newFontHeight: 32);
    return this;
  }

  BaseBlincText get heightXL {
    _calculateFontHeight(newFontHeight: 40);
    return this;
  }

  BaseBlincText get heightXXL {
    _calculateFontHeight(newFontHeight: 48);
    return this;
  }

  BaseBlincText get heightXXXL {
    _calculateFontHeight(newFontHeight: 56);
    return this;
  }

  BaseBlincText get heightHuge {
    _calculateFontHeight(newFontHeight: 64);
    return this;
  }

  BaseBlincText get heightXHuge {
    _calculateFontHeight(newFontHeight: 72);
    return this;
  }
}
