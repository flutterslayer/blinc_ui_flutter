import 'package:blinc_ui_flutter/src/blinc_colors.dart';
import 'package:blinc_ui_flutter/src/loading_spinner_component.dart';
import 'package:blinc_ui_flutter/src/spacing.dart';
import 'package:flutter/material.dart';

/// The BlincButton widgets creates a styled button.
/// You can choose between presets with BlincButton().largePrimary for example:
/// ```dart
///BlincButton(
///    text: 'My Button',
///    icon: Icons.person_pin_circle_outlined,
///    onPressed: () {},
///    isIconInverted: true,
///).largePrimary(),
/// ```
/// The presets can be chosen between small, large and combined with primary,
/// secondary and tertiary
///
/// The [text] property will add the text inside, which can be styled
/// with [textStyle]. If [isUnderlined] is set to true, will show an underlined
/// decoration. [padding] will create a padding inside the button. With [icon]
/// you can add an icon to the left side of the button, and switch it's position to
/// right with [isIconInverted] set to true. If [isLoading] is true, the content
/// of the button will be replaced by a loading wheel. If [isFLuid] is set to true
/// it will take all the available space around.
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
    this.disabled = false,
  }) : super(key: key);

  /// The button's text.
  final String? text;

  /// Accepts a function to be activated when pressed
  final Function? onPressed;

  /// Accepts a [BlincButtonTheme] to customize the button colors
  final BlincButtonTheme? buttonTheme;

  /// Accepts a [BlincButtonPresets] to customize the button sizing, shape and border
  final BlincButtonPresets? blincButtonPresets;

  /// Accepts a [TextStyle] to customize the text style
  final TextStyle? textStyle;

  /// Defines if the button should have an underline decoration
  final bool? isUnderlined;

  /// The button padding
  final EdgeInsets? padding;

  /// Defines what icon will be showed inside the button
  final IconData? icon;

  /// Defines the side the icon will be placed
  final bool? isIconInverted;

  /// If true it will show a loading spinner
  final bool? isLoading;

  /// If true the button will take any space available
  final bool? isFluid;

  /// If true the button will be disabled
  final bool disabled;

  /// Creates a small button with primary theme
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
      disabled: disabled,
    );
  }

  /// Creates a small button with secondary theme
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
      disabled: disabled,
    );
  }

  /// Creates a small button with tertiary theme
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
      disabled: disabled,
      isUnderlined: true,
    );
  }

  /// Creates a large button with primary theme
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
      disabled: disabled,
    );
  }

  /// Creates a large button with secondary theme
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
      disabled: disabled,
    );
  }

  /// Creates a large button with tertiary theme
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
      disabled: disabled,
      isUnderlined: true,
    );
  }

  BlincButton _doubleSecondary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: SecondaryButtonTheme(),
      blincButtonPresets: DoubleSecondaryPresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
      disabled: disabled,
    );
  }

  BlincButton _doublePrimary() {
    return BlincButton(
      text: text,
      onPressed: onPressed,
      buttonTheme: PrimaryButtonTheme(),
      blincButtonPresets: DoublePrimaryPresets(),
      padding: padding,
      icon: icon,
      isIconInverted: isIconInverted,
      isLoading: isLoading,
      isFluid: isFluid,
      disabled: disabled,
    );
  }

  static Widget doubleButton({
    required String textLeft,
    Function? onPressedLeft,
    required String textRight,
    Function? onPressedRight,
  }) {
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Align(
                alignment: const Alignment(-0.7, 0),
                child: SizedBox(
                  width: constraints.maxWidth / 2,
                  child: BlincButton(
                    text: textLeft,
                    onPressed: onPressedLeft,
                  )._doubleSecondary(),
                ),
              ),
              Align(
                alignment: const Alignment(0.8, 0),
                child: SizedBox(
                  width: constraints.maxWidth / 2,
                  child: BlincButton(
                    text: textRight,
                    onPressed: onPressedRight,
                  )._doublePrimary(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  State<BlincButton> createState() => _BlincButtonState();
}

class _BlincButtonState extends State<BlincButton> {
  /// Defines the default background color. If it's not defined it will use a
  /// standard color
  late final defaultColor =
      widget.buttonTheme?.backgroundColor ?? DefaultTheme.backgroundColor;

  /// Defines the background's hover color. If it's not defined it will use a
  /// standard color
  late final hoverColor =
      widget.buttonTheme?.hoverColor ?? DefaultTheme.hoverColor;

  /// Defines the background's disabled color. If it's not defined it will use a
  /// standard color
  late final disabledColor =
      widget.buttonTheme?.disabledColor ?? DefaultTheme.disabledColor;

  /// Defines the background's focus color. If it's not defined it will use a
  /// standard color
  late final focusedColor =
      widget.buttonTheme?.focusColor ?? DefaultTheme.focusColor;

  /// Defines the background's pressed color. If it's not defined it will use a
  /// standard color
  late final pressedColor =
      widget.buttonTheme?.pressedColor ?? DefaultTheme.pressedColor;

  /// Defines the default font color. If it's not defined it will use a
  /// standard color
  late final defaultFontColor = widget.buttonTheme?.backgroundFontColor ??
      DefaultTheme.backgroundFontColor;

  /// Defines the hover font color. If it's not defined it will use a
  /// standard color
  late final hoverFontColor =
      widget.buttonTheme?.hoverFontColor ?? DefaultTheme.hoverFontColor;

  /// Defines the disabled font color. If it's not defined it will use a
  /// standard color
  late final disabledFontColor =
      widget.buttonTheme?.disabledFontColor ?? DefaultTheme.disabledFontColor;

  /// Defines the focused font color. If it's not defined it will use a
  /// standard color
  late final focusedFontColor =
      widget.buttonTheme?.focusedFontColor ?? DefaultTheme.focusedFontColor;

  /// Defines the pressed font color. If it's not defined it will use a
  /// standard color
  late final pressedFontColor =
      widget.buttonTheme?.pressedFontColor ?? DefaultTheme.pressedFontColor;

  /// Defines the focus border color. If it's not defined it will use a
  /// standard color
  late final focusedBorderColor =
      widget.buttonTheme?.focusedBorderColor ?? DefaultTheme.focusedBorderColor;

  /// Defines if the button is currently focused..
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Checks if the button is focused. If true, returns the custom border
        border: isFocused == true
            ? Border.all(color: focusedBorderColor, width: 2)
            : null,
        borderRadius: BorderRadius.circular(10),
      ),
      // Padding is used here to compensate the dislocation from the focused border
      // Prevents dislocating the widget when the container border is added
      padding:
          isFocused == true ? const EdgeInsets.all(0) : const EdgeInsets.all(2),
      child: ConstrainedBox(
        // Limits the button size if it's not fluid
        constraints: BoxConstraints(
          // minWidth of the button. If not defined will take the standard
          minWidth: widget.isFluid == true
              ? 0
              : widget.blincButtonPresets?.minimumWidth ??
                  DefaultPresets.minimumWidth,
          // minHeight of the button. If not defined will take the standard
          minHeight: widget.isFluid == true
              ? 0
              : widget.blincButtonPresets?.minimumHeight ??
                  DefaultPresets.minimumHeight,
        ),
        child: ElevatedButton(
          // Changes the state when the button focus changes
          onFocusChange: (value) {
            setState(() {
              isFocused = value;
            });
          },
          onPressed: widget.onPressed != null && !widget.disabled
              ? () {
                  widget.onPressed!();
                }
              : null,

          /// The ButtonStyle controls the button style using MaterialState.
          /// It can listen to the button states and assign corresponding styles
          /// when hovered, focused, disabled, etc.
          style: ButtonStyle(
            /// Defines the background color
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                /// Assigns a color to disabled background
                if (states.contains(MaterialState.disabled)) {
                  return disabledColor;
                }

                /// returns the standard background color
                return defaultColor;
              },
            ),

            /// Overlay colors adds a color layer over the background
            /// when it's pressed, focused, etc.
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                /// Assigns overlay colors when it's pressed
                if (states.contains(MaterialState.pressed)) {
                  return pressedColor;
                }

                /// Assigns overlay colors when it's focused
                if (states.contains(MaterialState.focused)) {
                  return focusedColor;
                }

                /// Assigns overlay colors when it's hovered
                if (states.contains(MaterialState.hovered)) {
                  return hoverColor;
                }

                /// Assigns overlay colors when it's disabled
                if (states.contains(MaterialState.disabled)) {
                  return disabledColor;
                }

                /// Returns default overlay color
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

            /// Foreground colors will define the font and icon colors,
            /// but it can't change the underline colors.
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                /// Assigns text and icon colors when it's disabled
                if (states.contains(MaterialState.disabled)) {
                  return disabledFontColor;
                }

                /// Assigns text and icon colors when it's focused
                if (states.contains(MaterialState.focused)) {
                  return focusedFontColor;
                }

                /// Assigns text and icon colors when it's hovered
                if (states.contains(MaterialState.hovered)) {
                  return hoverFontColor;
                }

                /// Assigns text and icon colors when it's pressed
                if (states.contains(MaterialState.pressed)) {
                  return pressedFontColor;
                }

                /// Returns standard text and icon colors
                return defaultFontColor;
              },
            ),

            /// Defines the shape and border. When not defined it will take
            /// the standard shape.
            shape: MaterialStatePropertyAll<OutlinedBorder?>(
              widget.blincButtonPresets?.shape ?? DefaultPresets.shape,
            ),
          ),
          child: Padding(
            /// Adds padding. If not available, will take the default value.
            padding: widget.padding ??
                widget.blincButtonPresets?.padding ??
                DefaultPresets.padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // If isLoading is true will return only the loading widget
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
                  // Returns an icon at the left side of the button
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
                  // Creates underlined text
                  if (widget.isUnderlined == true && widget.text != null)
                    Flexible(
                      child: Text(
                        widget.text!,
                        style: TextStyle(
                          height: 1.5,
                          decorationThickness: 1.2,
                          color: Colors.transparent,
                          fontSize: widget.blincButtonPresets?.fontSize,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  // Creates text without underline decoration
                  if (widget.isUnderlined != true && widget.text != null)
                    Flexible(
                      child: Text(
                        widget.text!,
                        style: TextStyle(
                          height: 1.42,
                          fontWeight: null,
                          fontSize: widget.blincButtonPresets?.fontSize,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  // Returns an icon at the right side of the button
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
    );
  }
}

/// The default theme used when the colors are not explicitly defined
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

/// The default presets used when the button shape and sizes are not
/// explicitly defined
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

/// The blueprint for creating new BlincButton themes
abstract class BlincButtonTheme {
  /// The standard background color
  final Color backgroundColor;

  /// The background hover color
  final Color hoverColor;

  /// The background pressed color
  final Color pressedColor;

  /// The background focused color
  final Color focusColor;

  /// The background disabled color
  final Color disabledColor;

  /// The default font color
  final Color backgroundFontColor;

  /// The hover font color
  final Color hoverFontColor;

  /// The pressed font color
  final Color pressedFontColor;

  /// The focused font color
  final Color focusedFontColor;

  /// The disabled font color
  final Color disabledFontColor;

  /// The focused border color
  final Color focusedBorderColor;

  /// The loading spinner main color
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

/// Used to create underlined texts
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
  final backgroundColor = AppColors.colorNeutral_800;
  @override
  final hoverColor = AppColors.colorNeutral_900;
  @override
  final pressedColor = AppColors.colorNeutral_600;
  @override
  final focusColor = AppColors.colorNeutral_800LowOpacity;
  @override
  final disabledColor = AppColors.colorNeutral_800LowOpacity;
  @override
  final backgroundFontColor = AppColors.colorNeutral_0;
  @override
  final hoverFontColor = AppColors.colorNeutral_0;
  @override
  final pressedFontColor = AppColors.colorNeutral_0;
  @override
  final focusedFontColor = AppColors.colorNeutral_0;
  @override
  final disabledFontColor = AppColors.colorNeutral_0;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
  @override
  final loadingSpinnerColor = AppColors.colorNeutral_50;
}

class SecondaryButtonTheme implements BlincButtonTheme {
  @override
  final backgroundColor = AppColors.colorNeutral_200;
  @override
  final hoverColor = AppColors.colorNeutral_400;
  @override
  final pressedColor = AppColors.colorNeutral_100;
  @override
  final focusColor = AppColors.colorNeutral_400;
  @override
  final disabledColor = AppColors.colorNeutral_200MediumOpacity;
  @override
  final backgroundFontColor = AppColors.colorNeutral_800;
  @override
  final hoverFontColor = AppColors.colorNeutral_900;
  @override
  final pressedFontColor = AppColors.colorNeutral_600;
  @override
  final focusedFontColor = AppColors.colorNeutral_900;
  @override
  final disabledFontColor = AppColors.colorNeutral_800MediumOpacity;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
  @override
  final loadingSpinnerColor = AppColors.colorNeutral_800;
}

class TertiaryButtonTheme implements BlincButtonTheme {
  @override
  final backgroundColor = AppColors.colorNeutral_0;
  @override
  final hoverColor = AppColors.colorNeutral_50;
  @override
  final pressedColor = AppColors.colorNeutral_0;
  @override
  final focusColor = AppColors.colorNeutral_50;
  @override
  final disabledColor = AppColors.colorNeutral_0;
  @override
  final backgroundFontColor = AppColors.colorNeutral_800;
  @override
  final hoverFontColor = AppColors.colorNeutral_900;
  @override
  final pressedFontColor = AppColors.colorNeutral_600;
  @override
  final focusedFontColor = AppColors.colorNeutral_900;
  @override
  final disabledFontColor = AppColors.colorNeutral_800MediumOpacity;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
  @override
  final loadingSpinnerColor = AppColors.colorNeutral_800;
}

/// The blueprint to create BlincButton presets and customize shape and size of
/// it's elements.
abstract class BlincButtonPresets {
  /// The button's minimum width.
  final double minimumWidth;

  /// The button's minimum height.
  final double minimumHeight;

  /// The button's inside padding.
  final EdgeInsets padding;

  /// The button's border shape.
  final RoundedRectangleBorder shape;

  /// The button's text size.
  final double fontSize;

  /// The button's icon size.
  final double iconSize;

  /// The button's loading widget diameter.
  final double loadingSpinnerSize;

  BlincButtonPresets({
    required this.minimumWidth,
    required this.minimumHeight,
    required this.padding,
    required this.shape,
    required this.fontSize,
    required this.iconSize,
    required this.loadingSpinnerSize,
  });
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

class DoublePrimaryPresets implements BlincButtonPresets {
  @override
  final minimumWidth = 0;
  @override
  final minimumHeight = 72;
  @override
  final padding = const EdgeInsets.only(
    left: Spacing.xs,
    right: Spacing.xs,
  );
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

class DoubleSecondaryPresets implements BlincButtonPresets {
  @override
  final minimumWidth = 0;
  @override
  final minimumHeight = 72;
  @override
  final padding = const EdgeInsets.only(
    left: Spacing.xs,
    right: Spacing.xs,
  );
  @override
  final shape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),
    ),
  );
  @override
  final fontSize = 20;
  @override
  final iconSize = 19.5;
  @override
  final loadingSpinnerSize = 19;
}
