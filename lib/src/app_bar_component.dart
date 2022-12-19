import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class BlincAppBar extends AppBar with PreferredSizeWidget {
  /// Sets the size height of appbar
  final double height;

  /// Sets the icon
  final IconData? icon;

  /// Sets the icon route
  final void Function()? iconOnPressed;
  /// Sets the back button route
  final void Function()? backOnPressed;

  /// Sets the background color of appbar
  @override
  // ignore: overridden_fields
  final Color? backgroundColor;

  /// The [title]'s width is constrained to fit within the remaining space
  /// between the toolbar's [leading] and [actions] widgets.
  /// For example:
  ///
  /// ```dart
  /// Widget build(BuildContext context) {
  ///  return Scaffold(
  ///   appBar: BlincAppBar(
  ///     title: const BlincProgressBar(value: 0.75),
  ///   ),
  ///  );
  /// }
  /// ```
  @override
  // ignore: overridden_fields
  final Widget? title;

  @override
  Size get preferredSize => Size.fromHeight(height);

  /// Creates a custom app bar.
  /// Typically used in the [Scaffold.appBar] property.
  // ignore: sort_constructors_first
  BlincAppBar({
    Key? key,
    this.backOnPressed,
    this.title,
    this.height = 60,
    this.backgroundColor = AppColors.colorNeutral_50,
    this.icon,
    this.iconOnPressed,
  }) : super(
          key: key,
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: AppColors.colorNeutral_800),
          title: title,
          centerTitle: true,
          toolbarHeight: height.hsp,
          actions: [
            GestureDetector(
              onTap: iconOnPressed,
              child: Padding(
                  padding: EdgeInsets.only(right: 14.hsp),
                  child: Icon(
                    icon,
                  )),
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: backOnPressed ?? () => Navigator.pop(context),
              );
            },
          ),
        );
}
