import 'package:flutter/material.dart';
import 'package:flutter_glasskit/base_glass_button.dart';

class IconGlassButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color? splashColor;
  final Color? hoverColor;
  final Color gradientStart;
  final Color gradientEnd;
  final double opacity;
  final IconData icon;

  const IconGlassButton({
    super.key,
    required this.backgroundColor,
    required this.gradientStart,
    required this.gradientEnd,
    required this.icon,
    this.opacity = 0.5,
    this.splashColor,
    this.hoverColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseGlassButton(
      backgroundColor: backgroundColor,
      gradientStart: gradientStart,
      gradientEnd: gradientEnd,
      opacity: opacity,
      splashColor: splashColor,
      hoverColor: hoverColor,
      onTap: onTap,
      child: Icon(icon),
    );
  }
}
