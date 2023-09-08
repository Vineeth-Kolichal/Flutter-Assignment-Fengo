import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  const DashedDivider({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 1.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (7 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return Text('-');
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
