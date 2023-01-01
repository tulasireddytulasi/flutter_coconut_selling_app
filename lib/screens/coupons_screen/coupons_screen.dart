import 'dart:developer';

import 'package:coconut/screens/coupons_screen/coupon_card_widget.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  final TextEditingController _couponTextFieldController =
      TextEditingController();
  final _couponFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lynxWhite,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: blueGrey200,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Coupons Screen",
          style: TextStyle(fontSize: 18, color: white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _couponFormKey,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 4, bottom: 4),
                decoration: BoxDecoration(
                  // border: Border.all(color: black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  boxShadow: const [
                    BoxShadow(
                      color: divider2,
                      blurRadius: 6.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: TextFormField(
                  style: const TextStyle(fontSize: 16, color: black),
                  controller: _couponTextFieldController,
                  cursorColor: black,
                  showCursor: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Enter Code",
                    isDense: true,
                    contentPadding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 0, right: 0),
                    errorStyle:
                        const TextStyle(fontSize: 14, color: Colors.deepOrange),
                    counterText: "",
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffix: InkWell(
                      onTap: () {
                        if (_couponFormKey.currentState!.validate()) {
                          log("Valid");
                        } else {
                          log("InValid");
                        }
                      },
                      child: const Text(
                        "APPLY",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            // fontFamily: MONTSERRAT_MEDIUM,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  // onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter valid coupon code";
                    } else if (value.trim() == "SWIGGYIT") {
                      Navigator.pop(context, true);
                    } else {
                      return "Invalid coupon code";
                    }
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 24, right: 20, top: 20, bottom: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                "Available coupons",
                style: TextStyle(
                  fontSize: 18,
                  color: black,
                  fontFamily: montserratSemiBold,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return const CouponCard(
                    label: "FLAT OFF",
                    couponCode: "SWIGGYIT",
                    shortDescription: "Save ₹80 on this order!",
                    description:
                        "Use code SWIGGYIT & get 40% off on orders above ₹159. Maximum discount ₹80.",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
