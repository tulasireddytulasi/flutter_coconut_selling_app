import 'package:coconut/screens/reusable_widgets/reusable_button.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class PlaceOrderButton extends StatefulWidget {
  const PlaceOrderButton({Key? key}) : super(key: key);

  @override
  _PlaceOrderButtonState createState() => _PlaceOrderButtonState();
}

class _PlaceOrderButtonState extends State<PlaceOrderButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ProceedButton(
        text: "Place Order",
        buttonWidth: 190,
        callingAPI: () {},
        color: lightRed,
        borderRadius: 4,
        childWidget: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "₹183.21",
                  style: TextStyle(
                    fontSize: 16,
                    color: white,
                    fontWeight: FontWeight.normal,
                    fontFamily: MONTSERRAT_REGULAR,
                  ),
                ),
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 14,
                    color: divider2,
                    fontWeight: FontWeight.normal,
                    fontFamily: MONTSERRAT_REGULAR,
                  ),
                )
              ],
            ),
            Container(
              child: RichText(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Place Order  ",
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.normal,
                        fontFamily: MONTSERRAT_REGULAR,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
