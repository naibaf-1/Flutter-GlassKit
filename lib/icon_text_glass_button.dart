import 'package:flutter/material.dart';
import 'package:flutter_glasskit/base_glass_button.dart';

class IconTextGlassButton extends StatelessWidget{
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color? splashColor;
  final Color? hoverColor;
  final Color gradientStart;
  final Color gradientEnd;
  final double opacity;
  final String label;
  final IconData icon;

  const IconTextGlassButton({
    super.key,
    required this.backgroundColor,
    required this.gradientStart,
    required this.gradientEnd,
    required this.label,
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
      child: Row(
        spacing: 8.0,
        children: [
          Icon(icon),
          Text(
            label,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}