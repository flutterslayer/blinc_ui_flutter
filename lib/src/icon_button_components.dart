import 'package:flutter/material.dart';

class BlincIconButton extends StatefulWidget {
  const BlincIconButton({
    Key? key,
    this.onPressed,
    this.child,
    this.buttonTheme,
    this.iconPresets,
    this.textStyle,
    this.icon,
  }) : super(key: key);

  final Widget? child;
  final Function? onPressed;
  final BlincIconButtonTheme? buttonTheme;
  final IconPresets? iconPresets;
  final TextStyle? textStyle;
  final IconData? icon;

  BlincIconButton iconSmallPrimary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: PrimaryTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  BlincIconButton iconSmallSecondary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: SecondaryTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  BlincIconButton iconSmallTertiary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: TertiaryTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  BlincIconButton iconLargePrimary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: PrimaryTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  BlincIconButton iconLargeSecondary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: SecondaryTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  BlincIconButton iconLargeTertiary() {
    return BlincIconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      buttonTheme: TertiaryTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  @override
  State<BlincIconButton> createState() => _BlincIconButtonState();
}

class _BlincIconButtonState extends State<BlincIconButton> {
  late final defaultColor =
      widget.buttonTheme?.backgroundColor ?? DefaultTheme.backgroundColor;

  late final hoverColor =
      widget.buttonTheme?.hoverColor ?? DefaultTheme.hoverColor;

  late final disabledColor =
      widget.buttonTheme?.disabledColor ?? DefaultTheme.disabledColor;

  late final focusedColor =
      widget.buttonTheme?.focusColor ?? DefaultTheme.focusColor;

  late final pressedColor =
      widget.buttonTheme?.pressedColor ?? DefaultTheme.pressedColor;

  late final defaultFontColor = widget.buttonTheme?.backgroundFontColor ??
      DefaultTheme.backgroundFontColor;

  late final hoverFontColor =
      widget.buttonTheme?.hoverFontColor ?? DefaultTheme.hoverFontColor;

  late final disabledFontColor =
      widget.buttonTheme?.disabledFontColor ?? DefaultTheme.disabledFontColor;

  late final focusedFontColor =
      widget.buttonTheme?.focusedFontColor ?? DefaultTheme.focusedFontColor;

  late final pressedFontColor =
      widget.buttonTheme?.pressedFontColor ?? DefaultTheme.pressedFontColor;

  late final focusedBorderColor =
      widget.buttonTheme?.focusedBorderColor ?? DefaultTheme.focusedBorderColor;

  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isFocused == true
            ? Border.all(color: focusedBorderColor, width: 2)
            : null,
        borderRadius: BorderRadius.circular(60),
      ),
      // Padding is used here to compensate the dislocation from the focused border
      // Prevents dislocating the widget when the container border is added
      padding:
          isFocused == true ? const EdgeInsets.all(0) : const EdgeInsets.all(2),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SizedBox(
          width:
              widget.iconPresets?.buttonSize ?? DefaultIconPresets.buttonSize,
          height:
              widget.iconPresets?.buttonSize ?? DefaultIconPresets.buttonSize,
          child: ElevatedButton(
            clipBehavior: Clip.none,
            onPressed: () {
              if (widget.onPressed != null) {
                widget.onPressed!();
              }
            },
            onFocusChange: (value) {
              setState(() {
                isFocused = value;
              });
            },
            style: ButtonStyle(
              padding:
                  const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
              backgroundColor: MaterialStatePropertyAll<Color>(defaultColor),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return focusedFontColor;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return hoverFontColor;
                  }
                  if (states.contains(MaterialState.pressed)) {
                    return pressedFontColor;
                  }

                  if (states.contains(MaterialState.disabled)) {
                    return disabledFontColor;
                  }

                  return defaultFontColor;
                },
              ),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return pressedColor;
                  } else if (states.contains(MaterialState.focused)) {
                    return focusedColor;
                  } else if (states.contains(MaterialState.hovered)) {
                    return hoverColor;
                  } else if (states.contains(MaterialState.disabled)) {
                    return disabledColor;
                  }

                  return defaultColor;
                },
              ),
              shape: MaterialStatePropertyAll<OutlinedBorder?>(
                widget.iconPresets?.shape ?? DefaultIconPresets.shape,
              ),
            ),
            child: Icon(
              widget.icon,
              size: widget.iconPresets?.iconSize ?? DefaultIconPresets.iconSize,
            ),
          ),
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
  static const focusedBorderColor = Color.fromRGBO(133, 133, 131, 1);
}

class DefaultIconPresets {
  static const double buttonSize = 56;
  static const iconSize = 19.5;

  static var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(60.0),
  );
}

abstract class BlincIconButtonTheme {
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
  final Color focusedBorderColor;

  BlincIconButtonTheme({
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
    required this.focusedBorderColor,
  });
}

class PrimaryTheme implements BlincIconButtonTheme {
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
  @override
  final focusedBorderColor = const Color.fromRGBO(133, 133, 131, 1);
}

class SecondaryTheme implements BlincIconButtonTheme {
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
  @override
  final focusedBorderColor = const Color.fromRGBO(133, 133, 131, 1);
}

class TertiaryTheme implements BlincIconButtonTheme {
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
  @override
  final focusedBorderColor = const Color.fromRGBO(133, 133, 131, 1);
}

abstract class IconPresets {
  final double buttonSize;
  final double iconSize;
  final RoundedRectangleBorder shape;

  IconPresets({
    required this.shape,
    required this.buttonSize,
    required this.iconSize,
  });
}

class LargeIconPresets implements IconPresets {
  @override
  final buttonSize = 56;
  @override
  final iconSize = 19.5;
  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(60.0),
  );
}

class SmallIconPresets implements IconPresets {
  @override
  final buttonSize = 24;

  @override
  final iconSize = 10;

  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(60.0),
  );
}
