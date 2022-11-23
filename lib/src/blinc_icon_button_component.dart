import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

/// The BlincIconButton creates a button with an icon inside.
///
/// It accepts an [onPressed] function to be activated when pressed. The [buttonTheme]
/// allows customization of colors. The [iconPresets] allows customization of
/// shape and sizes. The [icon] accepts the IconData with icon information.
///
///
/// BlincIconButton can be extended with prebuilt options, combining small or large
/// with palette presets as primary, secondary and tertiary:
/// ```dart
/// BlincIconButton(
///     icon: Icons.facebook,
///     onPressed: () {},
/// ).iconLargePrimary(),
/// ```
class BlincIconButton extends StatefulWidget {
  const BlincIconButton({
    Key? key,
    this.onPressed,
    this.child,
    this.buttonTheme,
    this.iconPresets,
    this.icon,
  }) : super(key: key);

  /// The widget's child.
  final Widget? child;

  /// Accepts a function to be activated when pressed
  final Function? onPressed;

  /// Accepts a [BlincIconButtonTheme] to customize the button colors
  final BlincIconButtonTheme? buttonTheme;

  /// Accepts an [IconPresets] to customize the button sizing, shape and border
  final IconPresets? iconPresets;

  /// Defines what icon will be showed inside the button
  final IconData? icon;

  /// Creates a small icon button with primary theme
  BlincIconButton iconSmallPrimary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: PrimaryIconButtonTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  /// Creates a small icon button with secondary theme
  BlincIconButton iconSmallSecondary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: SecondaryIconButtonTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  /// Creates a small icon button with tertiary theme
  BlincIconButton iconSmallTertiary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: TertiaryIconButtonTheme(),
      iconPresets: SmallIconPresets(),
      icon: icon,
    );
  }

  /// Creates a large icon button with primary theme
  BlincIconButton iconLargePrimary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: PrimaryIconButtonTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  /// Creates a large icon button with secondary theme
  BlincIconButton iconLargeSecondary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: SecondaryIconButtonTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  /// Creates a large icon button with tertiary theme
  BlincIconButton iconLargeTertiary() {
    return BlincIconButton(
      onPressed: onPressed,
      buttonTheme: TertiaryIconButtonTheme(),
      iconPresets: LargeIconPresets(),
      icon: icon,
    );
  }

  @override
  State<BlincIconButton> createState() => _BlincIconButtonState();
}

class _BlincIconButtonState extends State<BlincIconButton> {
  /// Defines the default background color. If it's not defined it will use a
  /// standard color
  late final defaultColor = widget.buttonTheme?.backgroundColor ??
      DefaultIconButtonTheme.backgroundColor;

  /// Defines the background's hover color. If it's not defined it will use a
  /// standard color
  late final hoverColor =
      widget.buttonTheme?.hoverColor ?? DefaultIconButtonTheme.hoverColor;

  /// Defines the background's disabled color. If it's not defined it will use a
  /// standard color
  late final disabledColor =
      widget.buttonTheme?.disabledColor ?? DefaultIconButtonTheme.disabledColor;

  /// Defines the background's focus color. If it's not defined it will use a
  /// standard color
  late final focusedColor =
      widget.buttonTheme?.focusColor ?? DefaultIconButtonTheme.focusColor;

  /// Defines the background's pressed color. If it's not defined it will use a
  /// standard color
  late final pressedColor =
      widget.buttonTheme?.pressedColor ?? DefaultIconButtonTheme.pressedColor;

  /// Defines the default icon color. If it's not defined it will use a
  /// standard color
  late final defaultIconColor = widget.buttonTheme?.backgroundIconColor ??
      DefaultIconButtonTheme.backgroundIconColor;

  /// Defines the hover icon color. If it's not defined it will use a
  /// standard color
  late final hoverIconColor = widget.buttonTheme?.hoverIconColor ??
      DefaultIconButtonTheme.hoverIconColor;

  /// Defines the disabled icon color. If it's not defined it will use a
  /// standard color
  late final disabledIconColor = widget.buttonTheme?.disabledIconColor ??
      DefaultIconButtonTheme.disabledIconColor;

  /// Defines the focus icon color. If it's not defined it will use a
  /// standard color
  late final focusedIconColor = widget.buttonTheme?.focusedIconColor ??
      DefaultIconButtonTheme.focusedIconColor;

  /// Defines the pressed icon color. If it's not defined it will use a
  /// standard color
  late final pressedIconColor = widget.buttonTheme?.pressedIconColor ??
      DefaultIconButtonTheme.pressedIconColor;

  /// Defines the focus border color. If it's not defined it will use a
  /// standard color
  late final focusedBorderColor = widget.buttonTheme?.focusedBorderColor ??
      DefaultIconButtonTheme.focusedBorderColor;

  /// Defines if the button is currently focused.
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Checks if the button is focused. If true, returns the custom border
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
          // Width of the button. If not defined will take the standard
          width:
              widget.iconPresets?.buttonSize ?? DefaultIconPresets.buttonSize,

          // Height of the button. If not defined will take the standard
          height:
              widget.iconPresets?.buttonSize ?? DefaultIconPresets.buttonSize,
          child: ElevatedButton(
            clipBehavior: Clip.none,

            // Checks if the widget's onPressed is null
            onPressed: widget.onPressed != null
                ? () {
                    widget.onPressed!();
                  }
                : null,

            /// Changes the state when the button focus changes
            onFocusChange: (value) {
              setState(() {
                isFocused = value;
              });
            },

            /// The ButtonStyle controls the button style using MaterialState.
            /// It can listen to the button states and assign corresponding styles
            /// when hovered, focused, disabled, etc.
            style: ButtonStyle(
              /// Changes padding inside the button
              padding:
                  const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),

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

              /// Foreground colors will define icon colors
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  /// Assigns icon colors when it's focused
                  if (states.contains(MaterialState.focused)) {
                    return focusedIconColor;
                  }

                  /// Assigns icon colors when it's hovered
                  if (states.contains(MaterialState.hovered)) {
                    return hoverIconColor;
                  }

                  /// Assigns icon colors when it's pressed
                  if (states.contains(MaterialState.pressed)) {
                    return pressedIconColor;
                  }

                  /// Assigns icon colors when it's disabled
                  if (states.contains(MaterialState.disabled)) {
                    return disabledIconColor;
                  }

                  /// Returns standard icon colors
                  return defaultIconColor;
                },
              ),

              /// Overlay colors adds a color layer over the background
              /// when it's pressed, focused, etc.
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  /// Assigns overlay colors when it's pressed
                  if (states.contains(MaterialState.pressed)) {
                    return pressedColor;

                    /// Assigns overlay colors when it's focused
                  } else if (states.contains(MaterialState.focused)) {
                    return focusedColor;

                    /// Assigns overlay colors when it's hovered
                  } else if (states.contains(MaterialState.hovered)) {
                    return hoverColor;

                    /// Assigns overlay colors when it's disabled
                  } else if (states.contains(MaterialState.disabled)) {
                    return disabledColor;
                  }

                  /// Returns default overlay color
                  return defaultColor;
                },
              ),

              /// Defines the shape and border. When not defined it will take
              /// the standard shape
              shape: MaterialStatePropertyAll<OutlinedBorder?>(
                widget.iconPresets?.shape ?? DefaultIconPresets.shape,
              ),
            ),

            /// Assigns the icon.
            child: Icon(
              widget.icon,

              /// Size of the icon. If not defined will take the standard
              size: widget.iconPresets?.iconSize ?? DefaultIconPresets.iconSize,
            ),
          ),
        ),
      ),
    );
  }
}

/// The default icon theme used when the colors are not explicitly defined
class DefaultIconButtonTheme {
  static const backgroundColor = Color.fromRGBO(67, 67, 66, 1);
  static const hoverColor = Color.fromRGBO(26, 26, 25, 1);
  static const pressedColor = Color.fromRGBO(133, 133, 131, 1);
  static const focusColor = Color.fromRGBO(67, 67, 66, 0.2);
  static const disabledColor = Color.fromRGBO(67, 67, 66, 0.2);
  static const backgroundIconColor = Color.fromARGB(255, 255, 255, 255);
  static const hoverIconColor = Color.fromARGB(255, 255, 255, 255);
  static const pressedIconColor = Color.fromARGB(255, 255, 255, 255);
  static const focusedIconColor = Color.fromARGB(255, 255, 255, 255);
  static const disabledIconColor = Color.fromARGB(255, 255, 255, 255);
  static const focusedBorderColor = Color.fromRGBO(133, 133, 131, 1);
}

/// The default icon presets used when the icon button shape and sizes are not
/// explicitly defined
class DefaultIconPresets {
  static const double buttonSize = 56;
  static const iconSize = 19.5;

  static var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(60.0),
  );
}

/// The blueprint for creating new BlincIconButton themes
abstract class BlincIconButtonTheme {
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

  /// The default icon color
  final Color backgroundIconColor;

  /// The hover icon color
  final Color hoverIconColor;

  /// The pressed icon color
  final Color pressedIconColor;

  /// The focused icon color
  final Color focusedIconColor;

  /// The disabled icon color
  final Color disabledIconColor;

  /// The focused border color
  final Color focusedBorderColor;

  BlincIconButtonTheme({
    required this.backgroundColor,
    required this.hoverColor,
    required this.pressedColor,
    required this.focusColor,
    required this.disabledColor,
    required this.backgroundIconColor,
    required this.hoverIconColor,
    required this.pressedIconColor,
    required this.focusedIconColor,
    required this.disabledIconColor,
    required this.focusedBorderColor,
  });
}

class PrimaryIconButtonTheme implements BlincIconButtonTheme {
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
  final backgroundIconColor = AppColors.colorNeutral_0;
  @override
  final hoverIconColor = AppColors.colorNeutral_0;
  @override
  final pressedIconColor = AppColors.colorNeutral_0;
  @override
  final focusedIconColor = AppColors.colorNeutral_0;
  @override
  final disabledIconColor = AppColors.colorNeutral_0;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
}

class SecondaryIconButtonTheme implements BlincIconButtonTheme {
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
  final backgroundIconColor = AppColors.colorNeutral_800;
  @override
  final hoverIconColor = AppColors.colorNeutral_900;
  @override
  final pressedIconColor = AppColors.colorNeutral_600;
  @override
  final focusedIconColor = AppColors.colorNeutral_900;
  @override
  final disabledIconColor = AppColors.colorNeutral_800MediumOpacity;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
}

class TertiaryIconButtonTheme implements BlincIconButtonTheme {
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
  final backgroundIconColor = AppColors.colorNeutral_800;
  @override
  final hoverIconColor = AppColors.colorNeutral_900;
  @override
  final pressedIconColor = AppColors.colorNeutral_600;
  @override
  final focusedIconColor = AppColors.colorNeutral_900;
  @override
  final disabledIconColor = AppColors.colorNeutral_800MediumOpacity;
  @override
  final focusedBorderColor = AppColors.colorNeutral_600;
}

/// The blueprint to create BlincIconButton presets and customize shape and
/// size of it's elements.
abstract class IconPresets {
  /// The button size. It has the same width and height.
  final double buttonSize;

  /// The icon size
  final double iconSize;

  /// The border shape
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
