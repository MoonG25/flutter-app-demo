import 'package:flutter/material.dart';

class NeonText extends StatelessWidget {
  String text;
  double fontSize;
  double blurRadius;
  Color textColor;
  Color shadowColor;

  NeonText(
    this.text,
    {
      this.fontSize = 48,
      this.blurRadius = 20.0,
      this.textColor = Colors.white,
      this.shadowColor = const Color(0xffe7d160),
    }
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        shadows: [
          Shadow(
            blurRadius: blurRadius,
            color: shadowColor,
          ),
        ],
      ),
    );
  }
}
