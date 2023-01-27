import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.color,
    required this.contents,
    required this.fontSize,
    required this.onTap,
    this.textColor = Colors.black,
  });

  final Color color;
  final String contents;
  final double fontSize;
  final void Function() onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        // default onTap 효과 제거를 위함
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(45),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 50,
              ),
              child: Text(
                contents,
                style: TextStyle(
                  fontSize: fontSize,
                  color: textColor,
                  ),
                )
            ),
        ),
      ),
    );
  }
}