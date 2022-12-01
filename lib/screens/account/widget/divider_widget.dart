import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class HorizontalDividerWidget extends StatelessWidget {
  const HorizontalDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 2,
      color: Alice_blue,
    );
  }
}
