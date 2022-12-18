import 'package:coconut/screens/cart/widgets/cash_on_deleivery_widget.dart';
import 'package:coconut/screens/cart/widgets/place_order_button_widget.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class DeliveryAddressCard extends StatefulWidget {
  const DeliveryAddressCard({Key? key}) : super(key: key);

  @override
  _DeliveryAddressCardState createState() => _DeliveryAddressCardState();
}

class _DeliveryAddressCardState extends State<DeliveryAddressCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 0, right: 0),
      decoration: const BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: divider2,
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          size: 18,
                          color: red,
                        ),
                      ),
                      TextSpan(
                        text: " Delivery to:",
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    "Change",
                    style: TextStyle(
                      fontSize: 14,
                      color: red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 0, bottom: 10, left: 34),
            child: const Text(
              "22-5-9, M.V.P Colony, Sector-9, Vizag - 530017.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: black,
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: divider2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CashOnDeliveryWidget(),
              PlaceOrderButton(),
            ],
          ),
        ],
      ),
    );
  }
}
