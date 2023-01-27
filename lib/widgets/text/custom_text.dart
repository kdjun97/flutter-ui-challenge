import 'package:flutter/material.dart';

// custom text widget
class CustomText extends StatelessWidget {
  CustomText({
    required this.fontSize,
    this.opacity=1.0,
    required this.color,
    required this.contents,
    this.isBold=true,
  });

  final double fontSize;
  final double opacity;
  final Color color;
  final String contents;
  final bool isBold;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      contents,
      style: TextStyle(
        color: color.withOpacity(opacity),
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
