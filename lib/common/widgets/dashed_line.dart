import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double dashWidth;
  final double dashSpace;

  const DashedLine({
    super.key,
    this.height = 1,
    this.width = double.infinity,
    this.color = Colors.black,
    this.dashWidth = 5,
    this.dashSpace = 5,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedLinePainter(
        color: color,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        height: height,
      ),
      child: SizedBox(width: width, height: height),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final double height;

  _DashedLinePainter({
    required this.color,
    required this.dashWidth,
    required this.dashSpace,
    required this.height,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = height;

    double startX = 0;
    final y = size.height / 2;

    while (startX < size.width) {
      final endX = startX + dashWidth;
      canvas.drawLine(Offset(startX, y), Offset(endX, y), paint);
      startX = endX + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
