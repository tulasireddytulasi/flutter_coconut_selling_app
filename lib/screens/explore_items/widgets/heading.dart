import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 10, top: 0),
          child: const Text(
            "Great deals on top picks",
            style:
                TextStyle(fontSize: 14, color: red, fontFamily: montserratBold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: red,
            radius: 10,
            child: Icon(
              Icons.arrow_forward,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}
