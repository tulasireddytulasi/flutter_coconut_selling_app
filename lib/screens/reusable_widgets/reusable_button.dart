import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  final String text;
  final void Function() callingAPI;
  final double buttonWidth;
  final double topPadding;
  final double bottomPAdding;
  final Color color;
  final double borderRadius;
  final Widget? childWidget;
  const ProceedButton({
    required this.text,
    required this.callingAPI,
    required this.buttonWidth,
    this.topPadding = 14,
    this.bottomPAdding = 14,
    this.color = Colors.green,
    this.borderRadius = 25,
    this.childWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: callingAPI,
        child: Container(
          alignment: Alignment.center,
          width: buttonWidth,
          padding: EdgeInsets.only(bottom: bottomPAdding, top: topPadding),
          child: childWidget ??
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: montserratRegular,
                  color: white,
                ),
              ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
    );
  }
}
