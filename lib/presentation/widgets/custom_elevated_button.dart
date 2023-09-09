import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.labelText,
    required this.backgroundColor,
    required this.fontColor,
    this.width = 1,
    required this.onPressed,
    this.height = 40,
  });
  final String labelText;
  final Color backgroundColor;
  final Color fontColor;
  final double width;
  final Function()? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: customPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            labelText,
            style: TextStyle(color: fontColor, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
