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
    return this;
  }

  BaseBlincText weightRegular() {
    return this;
  }

  BaseBlincText weightMedium() {
    return this;
  }

  BaseBlincText weightSemiBold() {
    return this;
  }

  BaseBlincText weightBold() {
    return this;
  }

  BaseBlincText weightExtraBold() {
    return this;
  }

  BaseBlincText weightBlack() {
    return this;
  }

  BaseBlincText heightSM() {
    fontHeight = 24 / fontSize;
    return this;
  }
}
