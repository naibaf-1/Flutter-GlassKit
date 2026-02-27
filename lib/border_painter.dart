import 'package:flutter/material.dart';

class BorderPainter extends CustomPainter{
  final Gradient gradient;
  const BorderPainter({
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Create the border
    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(12));
    final paint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1
    .. shader = gradient.createShader(rect);

    // Create the glow
    final glowPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = gradient.createShader(rect);
    glowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 6);


    // Draw everything
    canvas.drawRRect(rrect, glowPaint);
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No animation
  }
}