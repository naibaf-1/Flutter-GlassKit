import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_glasskit/border_painter.dart';

class BaseGlassButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color? splashColor;
  final Color? hoverColor;
  final Color gradientStart;
  final Color gradientEnd;
  final double opacity;
  final Widget child;

  const BaseGlassButton({
    super.key,
    required this.backgroundColor,
    required this.child,
    required this.gradientStart,
    required this.gradientEnd,
    this.opacity = 0.5,
    this.splashColor,
    this.hoverColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 48,
          minHeight: 48,
        ),
        child: CustomPaint(
          painter: BorderPainter(
            gradient: LinearGradient(
              begin: AlignmentGeometry.xy(0.5, 0.25),
              end: AlignmentGeometry.xy(0, 0),
              colors: [gradientEnd, gradientStart],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                child: Material(
                  color: backgroundColor.withOpacity(opacity),
                  child: InkWell(
                    onTap: onTap,
                    splashColor: splashColor,
                    hoverColor: hoverColor,
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: child,
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
