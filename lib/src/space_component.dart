import 'package:blinc_ui_flutter/src/spacing.dart';
import 'package:flutter/material.dart';

/// Creates a spacer that can be horizontal or vertical and follows the
/// [Spacing] size values.
/// It can be used to separate layout blocks, for
/// example: [BlincSpacer.horizontal.huge]
enum BlincSpacer {
  /// Sets the horizontal value
  horizontal,

  /// Sets the vertical value
  vertical,
}

/// The generic spacer component. Creates a widget with defined
/// width and height
class _CustomSpaceComponent extends StatelessWidget {
  const _CustomSpaceComponent({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  /// Sets the width
  final double? width;

  /// Sets the height
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

/// The extension links the enum with spacing values.
/// It can be [horizontal] or [vertical], and returns the corresponding
/// spacing widget.
extension SelectOrientationAndSize on BlincSpacer {
  /// The [huge] size measures 80px
  Widget get huge {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.huge);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.huge);
    }
  }

  /// The [xxxl] size measures 72px
  Widget get xxxl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxxl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxxl);
    }
  }

  /// The [xxl] size measures 64px
  Widget get xxl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxl);
    }
  }

  /// The [xl] size measures 56px
  Widget get xl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xl);
    }
  }

  /// The [lg] size measures 48px
  Widget get lg {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.lg);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.lg);
    }
  }

  /// The [md] size measures 40px
  Widget get md {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.md);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.md);
    }
  }

  /// The [sm] size measures 32px
  Widget get sm {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.sm);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.sm);
    }
  }

  /// The [xs] size measures 24px
  Widget get xs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xs);
    }
  }

  /// The [xxs] size measures 16px
  Widget get xxs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxs);
    }
  }

  /// The [xxxs] size measures 8px
  Widget get xxxs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxxs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxxs);
    }
  }

  /// The [zero] size measures 0px
  Widget get zero {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.zero);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.zero);
    }
  }
}
