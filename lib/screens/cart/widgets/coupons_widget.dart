import 'package:coconut/screens/coupons_screen/coupons_screen.dart';
import 'package:coconut/screens/coupons_screen/widgets/coupon_applied_dilaog.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class CouponsWidget extends StatelessWidget {
  const CouponsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CouponsScreen()),
        ).then((value) {
          if (value) {
            couponAppliedDialogBox(
              buildContext: context,
              height: 260,
              width: _screenWidth - 40,
              couponId: "SWIGGYIT",
              discount: "10",
            );
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: white,
          //  border: Border.all(color: black, width: 1),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 4,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: azul,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Use coupons",
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
