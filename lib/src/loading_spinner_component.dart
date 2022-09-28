import 'package:flutter/material.dart';
import 'dart:math' as math;

class _GradientCircularProgressIndicator extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;
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

class _GradientCircularProgressPainter extends CustomPainter {
  _GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  });
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = 0;
    Rect rect = Offset(offset, offset) & Size(size.width, size.height);
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

class LoadingSpinner extends StatefulWidget {
  const LoadingSpinner({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);
  final Color color;
  final double size;
  @override
  _LoadingSpinnerState createState() => _LoadingSpinnerState();
}

class _LoadingSpinnerState extends State<LoadingSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
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
    return GestureDetector(
      onTap: () => _controller.forward(),
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
        child: _GradientCircularProgressIndicator(
          radius: widget.size / 2,
          gradientColors: [widget.color, Colors.transparent],
          strokeWidth: 4,
        ),
      ),
    );
  }
}
