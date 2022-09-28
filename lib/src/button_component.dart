import 'package:blinc_ui_flutter/src/loading_spinner_component.dart';
import 'package:flutter/material.dart';

class BlincButton extends StatefulWidget {
  const BlincButton({
    Key? key,
    this.onPressed,
    this.text,
    this.buttonTheme,
    this.blincButtonPresets,
    this.textStyle,
    this.isUnderlined,
    this.padding,
    this.icon,
    this.isIconInverted,
    this.isLoading,
    this.isFluid,
  }) : super(key: key);

  final String? text;
  final Function? onPressed;
  final BlincButtonTheme? buttonTheme;
  final BlincButtonPresets? blincButtonPresets;
  final TextStyle? textStyle;
  final bool? isUnderlined;
  final EdgeInsets? padding;
  final IconData? icon;
  final bool? isIconInverted;
  final bool? isLoading;
  final bool? isFluid;

  BlincButton smallPrimary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: PrimaryButtonTheme(),
      blincButtonPresets: SmallPresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
    );
  }

  BlincButton smallSecondary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: SecondaryButtonTheme(),
      blincButtonPresets: SmallPresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
    );
  }

  BlincButton smallTertiary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: TertiaryButtonTheme(),
      blincButtonPresets: SmallPresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
      isUnderlined: true,
    );
  }

  BlincButton largePrimary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: PrimaryButtonTheme(),
      blincButtonPresets: LargePresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
    );
  }

  BlincButton largeSecondary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: SecondaryButtonTheme(),
      blincButtonPresets: LargePresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
    );
  }

  BlincButton largeTertiary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: TertiaryButtonTheme(),
      blincButtonPresets: LargePresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
      isUnderlined: true,
    );
  }

  @override
  State<BlincButton> createState() => _BlincButtonState();
}

class _BlincButtonState extends State<BlincButton> {
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
        borderRadius: BorderRadius.circular(10),
      ),
      // Padding is used here to compensate the dislocation from the focused border
      // Prevents dislocating the widget when the container border is added
      padding:
          isFocused == true ? const EdgeInsets.all(0) : const EdgeInsets.all(2),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: widget.isFluid == true
                ? 0
                : widget.blincButtonPresets?.minimumWidth ??
                    DefaultPresets.minimumWidth,
            minHeight: widget.isFluid == true
                ? 0
                : widget.blincButtonPresets?.minimumHeight ??
                    DefaultPresets.minimumHeight,
          ),
          child: ElevatedButton(
            onFocusChange: (value) {
              setState(() {
                isFocused = value;
              });
            },
            onPressed: widget.onPressed != null
                ? () {
                    widget.onPressed!();
                  }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return disabledColor;
                  }

                  return defaultColor;
                },
              ),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return pressedColor;
                  }
                  if (states.contains(MaterialState.focused)) {
                    return focusedColor;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return hoverColor;
                  }
                  if (states.contains(MaterialState.disabled)) {
                    return disabledColor;
                  }

                  return defaultColor;
                },
              ),
              textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
                (Set<MaterialState> states) {
                  if (widget.isUnderlined == true) {
                    if (states.contains(MaterialState.hovered)) {
                      return UnderlineDecoration.textStyle(hoverFontColor);
                    }
                    if (states.contains(MaterialState.focused) &&
                        widget.textStyle != null) {
                      return UnderlineDecoration.textStyle(focusedFontColor);
                    }
                    if (states.contains(MaterialState.disabled)) {
                      return UnderlineDecoration.textStyle(disabledFontColor);
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return UnderlineDecoration.textStyle(pressedFontColor);
                    }
                    return UnderlineDecoration.textStyle(defaultFontColor);
                  }
                  return null;
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return disabledFontColor;
                  }
                  if (states.contains(MaterialState.focused)) {
                    return focusedFontColor;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return hoverFontColor;
                  }

                  if (states.contains(MaterialState.pressed)) {
                    return pressedFontColor;
                  }
                  return defaultFontColor;
                },
              ),
              shape: MaterialStatePropertyAll<OutlinedBorder?>(
                widget.blincButtonPresets?.shape ?? DefaultPresets.shape,
              ),
            ),
            child: Padding(
              padding: widget.padding ??
                  widget.blincButtonPresets?.padding ??
                  DefaultPresets.padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.isLoading == true)
                    SizedBox(
                        width: 25,
                        height: 25,
                        child: LoadingSpinner(
                          color: widget.buttonTheme?.loadingSpinnerColor ??
                              DefaultTheme.loadingSpinnerColor,
                          diameter:
                              widget.blincButtonPresets?.loadingSpinnerSize ??
                                  DefaultPresets.loadingSpinnerSize,
                        ))
                  else ...[
                    if (widget.icon != null && widget.isIconInverted != true)
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(
                            widget.icon,
                            size: widget.blincButtonPresets?.iconSize ??
                                DefaultPresets.iconSize,
                          ),
                        ),
                      ),
                    if (widget.isUnderlined == true && widget.text != null)
                      Flexible(
                        child: Text(
                          widget.text!,
                          style: const TextStyle(
                            height: 1.5,
                            decorationThickness: 1.2,
                            color: Colors.transparent,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    if (widget.isUnderlined != true && widget.text != null)
                      Flexible(
                        child: Text(
                          widget.text!,
                          style: const TextStyle(
                            height: 1.42,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    if (widget.icon != null && widget.isIconInverted == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Icon(
                          widget.icon,
                          size: widget.blincButtonPresets?.iconSize ??
                              DefaultPresets.iconSize,
                        ),
                      )
                  ]
                ],
              ),
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
  static const loadingSpinnerColor = Color.fromRGBO(243, 244, 249, 1);
}

class DefaultPresets {
  static const double minimumWidth = 137;
  static const double minimumHeight = 32;
  static const padding = EdgeInsets.fromLTRB(0, 16, 0, 16);
  static var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
  static const textStyle = TextStyle(
    fontSize: 14,
  );
  static const double iconSize = 16;
  static const double loadingSpinnerSize = 14;
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
  final Color focusedBorderColor;
  final Color loadingSpinnerColor;

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
    required this.focusedBorderColor,
    required this.loadingSpinnerColor,
  });
}

class UnderlineDecoration {
  static TextStyle textStyle(Color color) {
    return TextStyle(
      shadows: [Shadow(color: color, offset: const Offset(0, -1.8))],
      decoration: TextDecoration.underline,
      decorationColor: color,
    );
  }
}

class PrimaryButtonTheme implements BlincButtonTheme {
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
  @override
  final loadingSpinnerColor = const Color.fromRGBO(243, 244, 249, 1);
}

class SecondaryButtonTheme implements BlincButtonTheme {
  @override
  final backgroundColor = const Color.fromRGBO(220, 220, 218, 1);
  @override
  final hoverColor = const Color.fromRGBO(178, 178, 177, 1);
  @override
  final pressedColor = const Color.fromRGBO(227, 227, 225, 1);
  @override
  final focusColor = const Color.fromRGBO(178, 178, 177, 1);
  @override
  final disabledColor = const Color.fromRGBO(220, 220, 218, 0.4);
  @override
  final backgroundFontColor = const Color.fromRGBO(67, 67, 66, 1);
  @override
  final hoverFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final pressedFontColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final focusedFontColor = const Color.fromRGBO(26, 26, 25, 1);
  @override
  final disabledFontColor = const Color.fromRGBO(67, 67, 66, 0.4);
  @override
  final focusedBorderColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final loadingSpinnerColor = const Color.fromRGBO(67, 67, 66, 1);
}

class TertiaryButtonTheme implements BlincButtonTheme {
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
  final disabledFontColor = const Color.fromRGBO(67, 67, 66, 0.4);
  @override
  final focusedBorderColor = const Color.fromRGBO(133, 133, 131, 1);
  @override
  final loadingSpinnerColor = const Color.fromRGBO(67, 67, 66, 1);
}

abstract class BlincButtonPresets {
  final double minimumWidth;
  final double minimumHeight;
  final EdgeInsets padding;
  final RoundedRectangleBorder shape;
  final double fontSize;
  final double iconSize;
  final double loadingSpinnerSize;

  BlincButtonPresets(
      {required this.minimumWidth,
      required this.minimumHeight,
      required this.padding,
      required this.shape,
      required this.fontSize,
      required this.iconSize,
      required this.loadingSpinnerSize});
}

class SmallPresets implements BlincButtonPresets {
  @override
  final minimumWidth = 137;
  @override
  final minimumHeight = 32;
  @override
  final padding = const EdgeInsets.fromLTRB(0, 0, 0, 0);
  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
  @override
  final fontSize = 14;
  @override
  final iconSize = 16;
  @override
  final loadingSpinnerSize = 14;
}

class LargePresets implements BlincButtonPresets {
  @override
  final minimumWidth = 326;
  @override
  final minimumHeight = 72;
  @override
  final padding = const EdgeInsets.all(0);
  @override
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  );
  @override
  final fontSize = 20;
  @override
  final iconSize = 19.5;
  @override
  final loadingSpinnerSize = 19;
}
