import 'package:flutter/material.dart';

class DashLineDivider extends StatelessWidget {
  const DashLineDivider({
    Key? key,
    this.height = 1,
    this.dashWidth = 6.0,
    this.color = Colors.black,
  }) : super(key: key);
  final double height;
  final double dashWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashHeight = height;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          );
        },
      ),
    );
  }
}
