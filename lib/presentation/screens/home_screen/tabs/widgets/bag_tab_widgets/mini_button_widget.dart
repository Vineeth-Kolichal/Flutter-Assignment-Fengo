import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';

class MiniButtonWidget extends StatelessWidget {
  const MiniButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isDeleteButton = false,
  });
  final IconData icon;
  final Function() onPressed;
  final bool isDeleteButton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: customPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Icon(
            isDeleteButton ? Icons.delete : icon,
            color: textWhiteColor,
            size: 17,
          ),
        ),
      ),
    );
  }
}
