import 'package:coconut/screens/account/widget/right_arrow_icon.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/styles.dart';
import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard(
      {Key? key,
      required this.userName,
      required this.userEmail,
      required this.userMobileNo})
      : super(key: key);

  final String userName;
  final String userEmail;
  final String userMobileNo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: blueGrey200,
      splashColor: blueGrey200,
      child: Container(
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: blueGrey200,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: white,
                    child: Text(
                      userName.isNotEmpty ? userName[0].toUpperCase() : "U",
                      style: const TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName, style: regular_black_14),
                    if (userEmail.isNotEmpty)
                      Text(userEmail, style: regular_black_10),
                    if (userMobileNo.isNotEmpty)
                      Text(userMobileNo, style: regular_black_10)
                  ],
                ),
              ],
            ),
            const RightArrowIcon()
          ],
        ),
      ),
    );
  }
}
