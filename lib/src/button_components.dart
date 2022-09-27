import 'package:flutter/material.dart';

class BlincButton extends StatefulWidget {
  const BlincButton({
    Key? key,
    this.onPressed,
    this.text,
    this.buttonTheme,
    this.sizePresets,
    this.textStyle,
    this.padding,
    this.icon,
  }) : super(key: key);

  final String? text;
  final Function? onPressed;
  final BlincButtonTheme? buttonTheme;
  final SizePresets? sizePresets;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final IconData? icon;

  BlincButton smallPrimary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: PrimaryTheme(),
      sizePresets: SmallPresets(),
      padding: padding,
      icon: icon,
    );
  }

  BlincButton smallSecondary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: SecondaryTheme(),
      sizePresets: SmallPresets(),
      padding: padding,
      icon: icon,
    );
  }

  BlincButton smallTertiary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: TertiaryTheme(),
      sizePresets: SmallPresets(),
      padding: padding,
      icon: icon,
    );
  }

  BlincButton largePrimary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: PrimaryTheme(),
      sizePresets: LargePresets(),
      padding: padding,
      icon: icon,
    );
  }

  BlincButton largeSecondary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: SecondaryTheme(),
      sizePresets: LargePresets(),
      padding: padding,
      icon: icon,
    );
  }

  BlincButton largeTertiary() {
    return BlincButton(
      text: text,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: TertiaryTheme(),
      sizePresets: LargePresets(),
      padding: padding,
      icon: icon,
    );
  }

  @override
  State<BlincButton> createState() => _BlincButtonState();
}

class _BlincButtonState extends State<BlincButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.isEmpty) {
              return widget.buttonTheme?.backgroundFontColor ??
                  DefaultTheme.backgroundFontColor;
            }
            if (states.contains(MaterialState.hovered)) {
              return widget.buttonTheme?.hoverFontColor ??
                  DefaultTheme.hoverFontColor;
            }
            if (states.contains(MaterialState.disabled)) {
              return widget.buttonTheme?.disabledColor ??
                  DefaultTheme.disabledFontColor;
            }
            if (states.contains(MaterialState.focused)) {
              return widget.buttonTheme?.focusedFontColor ??
                  DefaultTheme.focusedFontColor;
            }
            if (states.contains(MaterialState.pressed)) {
              return widget.buttonTheme?.pressedFontColor ??
                  DefaultTheme.pressedFontColor;
            }
            return DefaultTheme.backgroundFontColor;
          },
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
            widget.buttonTheme?.backgroundColor ??
                DefaultTheme.backgroundColor),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) {
              return widget.buttonTheme?.focusColor ?? DefaultTheme.focusColor;
            }
            if (states.contains(MaterialState.pressed)) {
              return widget.buttonTheme?.pressedColor ??
                  DefaultTheme.pressedColor;
            }
            if (states.contains(MaterialState.hovered)) {
              return widget.buttonTheme?.hoverColor ?? DefaultTheme.hoverColor;
            }
            if (states.contains(MaterialState.disabled)) {
              return widget.buttonTheme?.disabledColor ??
                  DefaultTheme.disabledColor;
            }

            return widget.buttonTheme?.backgroundColor ??
                DefaultTheme.backgroundColor;
          },
        ),
        minimumSize: MaterialStatePropertyAll<Size?>(
          widget.sizePresets?.minimumSize ?? DefaultPresets.minimumSize,
        ),
        maximumSize: MaterialStatePropertyAll<Size?>(
          widget.sizePresets?.maximumSize,
        ),
        shape: MaterialStatePropertyAll<OutlinedBorder?>(
          widget.sizePresets?.shape ?? DefaultPresets.shape,
        ),
      ),
      child: Padding(
        padding: widget.padding ??
            widget.sizePresets?.padding ??
            DefaultPresets.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...[
              if (widget.icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(widget.icon),
                )
            ],
            ...[
              if (widget.text != null)
                Text(
                  widget.text!,
                  style: widget.textStyle,
                ),
            ]
          ],
        ),
      ),
    );
  }
}

class DefaultTheme {
  static const backgroundColor = Color.fromRGBO(67, 67, 66, 1);
  static const hoverColor = Color.fromRGBO(26, 26, 25, 1);
  static const pressedColor = Color.fromRGBO(133, 133, 131, 1);
  static const focusColor = Color.fromRGBO(67, 67, 66, 0.2);
  static const disabledColor = Color.fromRGBO(67, 67, 66, 0.2);
  static const backgroundFontColor = Color.fromARGB(255, 255, 255, 255);
  static const hoverFontColor = Color.fromARGB(255, 255, 255, 255);
  static const pressedFontColor = Color.fromARGB(255, 255, 255, 255);
  static const focusedFontColor = Color.fromARGB(255, 255, 255, 255);
  static const disabledFontColor = Color.fromARGB(255, 255, 255, 255);
}

class DefaultPresets {
  static const minimumSize = Size(137, 32);
  static const padding = EdgeInsets.fromLTRB(0, 16, 0, 16);
  static var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
  static const textStyle = TextStyle(
    fontSize: 14,
  );
}

abstract class BlincButtonTheme {
  final Color backgroundColor;
  final Color hoverColor;
  final Color pressedColor;
  final Color focusColor;
  final Color disabledColor;
  final Color backgroundFontColor;
  final Color hoverFontColor;
  final Color pressedFontColor;
  final Color focusedFontColor;
  final Color disabledFontColor;

  BlincButtonTheme({
    required this.backgroundColor,
    required this.hoverColor,
    required this.pressedColor,
    required this.focusColor,
    required this.disabledColor,
    required this.backgroundFontColor,
    required this.hoverFontColor,
    required this.pressedFontColor,
    required this.focusedFontColor,
    required this.disabledFontColor,
  });
}

class PrimaryTheme implements BlincButtonTheme {
  @override
  final backgroundColor = const Color.fromRGBO(67, 67, 66, 1);
  @override
  final hoverColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final pressedColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final focusColor = const Color.fromRGBO(67, 67, 66, 0.2);
  @override
  final disabledColor = const Color.fromRGBO(67, 67, 66, 0.2);
  @override
  final backgroundFontColor = const Color.fromARGB(255, 255, 255, 255);
  @override
  final hoverFontColor = const Color.fromARGB(255, 255, 255, 255);
  @override
  final pressedFontColor = const Color.fromARGB(255, 255, 255, 255);
  @override
  final focusedFontColor = const Color.fromARGB(255, 255, 255, 255);
  @override
  final disabledFontColor = const Color.fromARGB(255, 255, 255, 255);
}

class SecondaryTheme implements BlincButtonTheme {
  @override
  final backgroundColor = const Color.fromRGBO(220, 220, 218, 1);
  @override
  final hoverColor = const Color.fromRGBO(178, 178, 177, 1);
  @override
  final pressedColor = const Color.fromRGBO(227, 227, 225, 1);
  @override
  final focusColor = const Color.fromRGBO(178, 178, 177, 1);
  @override
  final disabledColor = const Color.fromRGBO(220, 220, 218, 1);
  @override
  final backgroundFontColor = const Color.fromRGBO(67, 67, 66, 1);
  @override
  final hoverFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final pressedFontColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final focusedFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final disabledFontColor = const Color.fromRGBO(67, 67, 66, 1);
}

class TertiaryTheme implements BlincButtonTheme {
  @override
  final backgroundColor = const Color.fromRGBO(255, 255, 255, 1);
  @override
  final hoverColor = const Color.fromRGBO(242, 242, 239, 1);
  @override
  final pressedColor = const Color.fromRGBO(255, 255, 255, 1);
  @override
  final focusColor = const Color.fromRGBO(242, 242, 239, 1);
  @override
  final disabledColor = const Color.fromRGBO(255, 255, 255, 1);
  @override
  final backgroundFontColor = const Color.fromRGBO(67, 67, 66, 1);
  @override
  final hoverFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final pressedFontColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final focusedFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final disabledFontColor = const Color.fromRGBO(67, 67, 66, 1);
}

abstract class SizePresets {
  final Size minimumSize;
  final EdgeInsets padding;
  final RoundedRectangleBorder shape;
  final TextStyle textStyle;
  final Size? maximumSize;

  SizePresets({
    required this.minimumSize,
    required this.padding,
    required this.shape,
    required this.textStyle,
    this.maximumSize,
  });
}

class SmallPresets implements SizePresets {
  @override
  final minimumSize = const Size(137, 32);
  @override
  final padding = const EdgeInsets.fromLTRB(0, 0, 0, 0);

  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
  @override
  final textStyle = const TextStyle(
    fontSize: 14,
  );
  @override
  final maximumSize = null;
}

class LargePresets implements SizePresets {
  @override
  final minimumSize = const Size(326, 72);
  @override
  final padding = const EdgeInsets.all(0);

  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  );
  @override
  final textStyle = const TextStyle(
    fontSize: 20,
  );
  @override
  final maximumSize = null;
}
