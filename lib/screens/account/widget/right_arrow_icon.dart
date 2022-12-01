import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class RightArrowIcon extends StatelessWidget {
  const RightArrowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: const Icon(
        Icons.arrow_forward_ios,
        color: black,
        size: 18,
      ),
    );
  }
}
