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
    this.prefixIcon,
    this.borderColor = customPrimaryColor,
    this.labelTextFontSize,
  });
  final String labelText;
  final Color backgroundColor;
  final Color fontColor;
  final double? width;
  final Function()? onPressed;
  final double height;
  final Widget? prefixIcon;
  final Color? borderColor;
  final double? labelTextFontSize;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: width != null ? size.width * width! : null,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: borderColor ?? transparent,
                ),
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon ?? const SizedBox.shrink(),
            prefixIcon != null
                ? const SizedBox(
                    width: 5,
                  )
                : const SizedBox.shrink(),
            Text(
              labelText,
              style: TextStyle(
                color: fontColor,
                fontWeight: FontWeight.w700,
                fontSize: labelTextFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
