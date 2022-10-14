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
  double? fontHeight;

  BaseBlincText weightThin() {
    fontWeight = FontWeight.w100;
    return this;
  }

  BaseBlincText weightLight() {
    fontWeight = FontWeight.w300;
    return this;
  }

  BaseBlincText weightRegular() {
    fontWeight = FontWeight.w400;
    return this;
  }

  BaseBlincText weightMedium() {
    fontWeight = FontWeight.w500;
    return this;
  }

  BaseBlincText weightSemiBold() {
    fontWeight = FontWeight.w600;
    return this;
  }

  BaseBlincText weightBold() {
    fontWeight = FontWeight.w700;
    return this;
  }

  BaseBlincText weightExtraBold() {
    fontWeight = FontWeight.w800;
    return this;
  }

  BaseBlincText weightBlack() {
    fontWeight = FontWeight.w900;
    return this;
  }

  BaseBlincText sizeXXXS() {
    fontSize = 10;
    return this;
  }

  BaseBlincText sizeXXS() {
    fontSize = 12;
    return this;
  }

  BaseBlincText sizeXS() {
    fontSize = 14;
    return this;
  }

  BaseBlincText sizeSM() {
    fontSize = 16;
    return this;
  }

  BaseBlincText sizeMD() {
    fontSize = 20;
    return this;
  }

  BaseBlincText sizeLG() {
    fontSize = 24;
    return this;
  }

  BaseBlincText sizeXL() {
    fontSize = 28;
    return this;
  }

  BaseBlincText sizeXXL() {
    fontSize = 32;
    return this;
  }

  BaseBlincText sizeXXXL() {
    fontSize = 40;
    return this;
  }

  BaseBlincText sizeHuge() {
    fontSize = 48;
    return this;
  }

  BaseBlincText sizeXHuge() {
    fontSize = 56;
    return this;
  }

  BaseBlincText sizeXXHuge() {
    fontSize = 64;
    return this;
  }

  BaseBlincText _calculateFontHeight({required int fontHeight}) {
    this.fontHeight = fontHeight / fontSize;
    if (this.fontHeight! < 1) {
      throw Exception(
          "The value of line height can't be less than font height");
    }
    return this;
  }

  BaseBlincText heightXXXS() {
    _calculateFontHeight(fontHeight: 12);
    return this;
  }

  BaseBlincText heightXXS() {
    _calculateFontHeight(fontHeight: 16);
    return this;
  }

  BaseBlincText heightXS() {
    _calculateFontHeight(fontHeight: 20);
    return this;
  }

  BaseBlincText heightSM() {
    _calculateFontHeight(fontHeight: 24);
    return this;
  }

  BaseBlincText heightMD() {
    _calculateFontHeight(fontHeight: 28);
    return this;
  }

  BaseBlincText heightLG() {
    _calculateFontHeight(fontHeight: 32);
    return this;
  }

  BaseBlincText heightXL() {
    _calculateFontHeight(fontHeight: 40);
    return this;
  }

  BaseBlincText heightXXL() {
    _calculateFontHeight(fontHeight: 48);
    return this;
  }

  BaseBlincText heightXXXL() {
    _calculateFontHeight(fontHeight: 56);
    return this;
  }

  BaseBlincText heightHuge() {
    _calculateFontHeight(fontHeight: 64);
    return this;
  }

  BaseBlincText heightXHuge() {
    _calculateFontHeight(fontHeight: 72);
    return this;
  }
}
