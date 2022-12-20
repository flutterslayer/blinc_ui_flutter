import 'package:flutter/material.dart';
import 'dart:math' as math;

/// Creates the static Loading Spinner. Requires the [radius], [gradientColors]
/// and [strokeWidth]
class _GradientCircularProgressIndicator extends StatelessWidget {
  /// The radius size of the spinner
  final double radius;

  /// It requires a list of colors to create the gradient
  final List<Color> gradientColors;

  /// The width of the loading wheel
  final double strokeWidth;
  const _GradientCircularProgressIndicator({
    Key? key,
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: Size.fromRadius(radius),
        painter: _GradientCircularProgressPainter(
          radius: radius,
          gradientColors: gradientColors,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

/// Draws the loading wheel through the paint method. Must provide [radius],
/// [gradientColors]
class _GradientCircularProgressPainter extends CustomPainter {
  _GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  });

  /// The radius size of the spinner
  final double radius;

  /// Requires a list of colors to create the gradient
  final List<Color> gradientColors;

  /// The width of the loading wheel
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    /// Size of the wheel
    size = Size.fromRadius(radius);

    /// The distance from the anchor point. Must be zero to center.
    double offset = 0;

    /// The offset and size of the loading wheel
    Rect rect = Offset(offset, offset) & Size(size.width, size.height);

    /// Draws the loading wheel circle
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    paint.shader = SweepGradient(
            colors: gradientColors, startAngle: 0.0, endAngle: 2 * math.pi)
        .createShader(rect);
    canvas.drawArc(rect, 0.0, 2 * math.pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/// LoadingSpinner is an alternate CircularProgressIndicator widget with a
/// gradient finish. It requires a [color] and the [diameter].
/// It uses an AnimatorController and spins indefinitely.
class LoadingSpinner extends StatefulWidget {
  const LoadingSpinner({
    Key? key,
    required this.color,
    required this.diameter,
  }) : super(key: key);

  /// The main color of the gradient
  final Color color;

  /// The diameter of the loading wheel
  final double diameter;
  @override
  LoadingSpinnerState createState() => LoadingSpinnerState();
}

class LoadingSpinnerState extends State<LoadingSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    /// Starts the animation. Repeat makes sure it spins indefinitely.
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// Creates the spinning animation. Accepts the spin sprite
    return RotationTransition(
      /// The turns of the spin.
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: _GradientCircularProgressIndicator(
        /// The radius define the size of the circle
        radius: widget.diameter / 2,

        /// The list of the color gradient
        gradientColors: [widget.color, Colors.transparent],

        /// Thickness of the loading wheel
        strokeWidth: 4,
      ),
    );
  }
}