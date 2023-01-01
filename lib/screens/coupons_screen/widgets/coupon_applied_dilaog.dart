import 'dart:ui';

import 'package:coconut/screens/coupons_screen/widgets/animated_check.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:coconut/utils/styles.dart';
import 'package:flutter/material.dart';

Future couponAppliedDialogBox(
    {required BuildContext buildContext,
    required double height,
    required double width,
    required String couponId,
    required String discount}) {
  return showDialog(
    barrierDismissible: true,
    context: buildContext,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
          alignment: Alignment.center,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 14),
                  AnimatedCheck(),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$couponId Applied',
                          style: const TextStyle(
                              color: grey1,
                              fontFamily: montserratMedium,
                              fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'You saved ₹$discount',
                          style: const TextStyle(
                              fontSize: 24,
                              color: black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          'with this coupon code',
                          style: semibold_black_14,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: width,
                          child: const Center(
                            child: Text(
                              "Woohoo! Thanks",
                              style: TextStyle(
                                  color: green,
                                  fontFamily: montserratMedium,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
