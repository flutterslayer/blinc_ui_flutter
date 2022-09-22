import 'package:blinc_ui_flutter/src/spacing.dart';
import 'package:flutter/material.dart';

class SpaceComponent {
  static Widget get zero {
    return const _CustomSpaceComponent(width: Spacing.zero);
  }

  static Widget get hxxxs {
    return const _CustomSpaceComponent(width: Spacing.xxxs);
  }

  static Widget get hxxs {
    return const _CustomSpaceComponent(width: Spacing.xxs);
  }

  static Widget get hxs {
    return const _CustomSpaceComponent(width: Spacing.xs);
  }

  static Widget get hsm {
    return const _CustomSpaceComponent(width: Spacing.sm);
  }

  static Widget get hmd {
    return const _CustomSpaceComponent(width: Spacing.md);
  }

  static Widget get hlg {
    return const _CustomSpaceComponent(width: Spacing.lg);
  }

  static Widget get hxl {
    return const _CustomSpaceComponent(width: Spacing.xl);
  }

  static Widget get hxxl {
    return const _CustomSpaceComponent(width: Spacing.xxl);
  }

  static Widget get hxxxl {
    return const _CustomSpaceComponent(width: Spacing.xxxl);
  }

  static Widget get hhuge {
    return const _CustomSpaceComponent(width: Spacing.huge);
  }

  static Widget get vxxxs {
    return const _CustomSpaceComponent(height: Spacing.xxxs);
  }

  static Widget get vxxs {
    return const _CustomSpaceComponent(height: Spacing.xxs);
  }

  static Widget get vxs {
    return const _CustomSpaceComponent(height: Spacing.xs);
  }

  static Widget get vsm {
    return const _CustomSpaceComponent(height: Spacing.sm);
  }

  static Widget get vmd {
    return const _CustomSpaceComponent(height: Spacing.md);
  }

  static Widget get vlg {
    return const _CustomSpaceComponent(height: Spacing.lg);
  }

  static Widget get vxl {
    return const _CustomSpaceComponent(height: Spacing.xl);
  }

  static Widget get vxxl {
    return const _CustomSpaceComponent(height: Spacing.xxl);
  }

  static Widget get vxxxl {
    return const _CustomSpaceComponent(height: Spacing.xxxl);
  }

  static Widget get vhuge {
    return const _CustomSpaceComponent(height: Spacing.huge);
  }
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
