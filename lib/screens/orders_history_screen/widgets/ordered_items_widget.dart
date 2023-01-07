import 'package:coconut/screens/reusable_widgets/dash_line_divider_widget.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class OrderedItemsWidget extends StatefulWidget {
  const OrderedItemsWidget({Key? key}) : super(key: key);

  @override
  _OrderedItemsWidgetState createState() => _OrderedItemsWidgetState();
}

class _OrderedItemsWidgetState extends State<OrderedItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(color: grey, width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    //  border: Border.all(color: black, width: 1),
                    ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    greenCoconut1,
                    width: 100,
                    height: 60,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: _screenWidth / 1.8,
                      child: const Text(
                        "Tender Coconut 1 pc ( Approx 800 g - 1500 g )",
                        softWrap: true,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      width: _screenWidth / 1.8,
                      margin: const EdgeInsets.only(top: 4),
                      child: const Text(
                        "PRIVATE LABEL",
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: grey1),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: DashLineDivider(
              color: Colors.grey,
              dashWidth: 4.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: const Text(
                  "19 Dec 2022 at 9:26PM",
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: grey1,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Row(
                children: const [
                  Text(
                    "₹49.00",
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontFamily: montserratRegular,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: black,
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: DashLineDivider(
              color: Colors.grey,
              dashWidth: 4.0,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 8),
              const Text(
                "You rated",
                style: TextStyle(fontSize: 14, color: black),
              ),
              const SizedBox(width: 8),
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "4",
                      style: TextStyle(fontSize: 12, color: white),
                    ),
                    SizedBox(width: 1),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: white,
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 18,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 4, right: 4),
                decoration: BoxDecoration(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Delivered",
                  style: TextStyle(fontSize: 12, color: white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
