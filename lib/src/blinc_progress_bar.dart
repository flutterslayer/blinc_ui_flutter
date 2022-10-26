import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

/// The BlincProgressBar is a widget that shows loading progress. It requires a
/// [value], that can range from 0 to 1 indicating the percentage of the progress.
/// The style can be switched to dark mode if [dark] is set to true.
/// Example:
/// BlincProgressBar(
///     value: 0.2,
///     dark: true,
/// ),
class BlincProgressBar extends StatelessWidget {
  const BlincProgressBar({
    Key? key,
    required this.value,
    this.dark = true,
  })  : assert(value <= 1.0),
        super(key: key);

  /// [dark] set the color scheme
  final bool dark;

  /// [value] progress percentage, maximum value is 1.0
  final double value;

  Color _getColor() {
    return dark ? AppColors.colorNeutral_800 : AppColors.colorNeutral_50;
  }

  Color _getBackgroundColor() {
    return dark ? AppColors.colorNeutral_400 : AppColors.colorNeutral_600;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(99),
      ),
      child: LinearProgressIndicator(
        value: value,
        minHeight: 4,
        color: _getColor(),
        backgroundColor: _getBackgroundColor(),
      ),
    );
  }
}
