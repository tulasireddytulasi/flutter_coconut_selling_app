import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class CashOnDeliveryWidget extends StatelessWidget {
  const CashOnDeliveryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: black,
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.money_outlined,
                  size: 22,
                  color: black,
                ),
                SizedBox(width: 2),
                Text(
                  "Pay using",
                  style: TextStyle(
                    fontSize: 12,
                    color: black,
                    fontWeight: FontWeight.normal,
                    fontFamily: montserratRegular,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 22,
                  color: black,
                ),
              ],
            ),
            const Text(
              "Cash on Delivery",
              style: TextStyle(
                fontSize: 12,
                color: black,
                fontWeight: FontWeight.normal,
                fontFamily: montserratRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
