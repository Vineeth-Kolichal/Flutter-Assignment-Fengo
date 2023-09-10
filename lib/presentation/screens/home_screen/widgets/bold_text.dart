import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText(
    this.text, {
    super.key,
    this.fontSize,
    this.fontColor,
  });
  final String text;
  final double? fontSize;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w800, fontSize: fontSize, color: fontColor),
    );
  }
}
