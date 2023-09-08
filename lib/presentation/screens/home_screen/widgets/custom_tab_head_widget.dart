import 'package:flutter/material.dart';

class CustomTaHeadbWidget extends StatelessWidget {
  const CustomTaHeadbWidget({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(
            width: 5,
          ),
          Text(label),
        ],
      ),
    );
  }
}
