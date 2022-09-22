import 'package:blinc_ui_flutter/src/spacing.dart';
import 'package:flutter/material.dart';

enum BlincSpacer {
  horizontal,
  vertical,
}

class _CustomSpaceComponent extends StatelessWidget {
  const _CustomSpaceComponent({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

extension SelectOrientationAndSize on BlincSpacer {
  Widget get huge {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.huge);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.huge);
    }
  }

  Widget get xxxl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxxl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxxl);
    }
  }

  Widget get xxl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxl);
    }
  }

  Widget get xl {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xl);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xl);
    }
  }

  Widget get lg {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.lg);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.lg);
    }
  }

  Widget get md {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.md);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.md);
    }
  }

  Widget get sm {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.sm);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.sm);
    }
  }

  Widget get xs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xs);
    }
  }

  Widget get xxs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxs);
    }
  }

  Widget get xxxs {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.xxxs);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.xxxs);
    }
  }

  Widget get zero {
    switch (this) {
      case BlincSpacer.horizontal:
        return const _CustomSpaceComponent(width: Spacing.zero);
      case BlincSpacer.vertical:
        return const _CustomSpaceComponent(height: Spacing.zero);
    }
  }
}
