import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class BillingDetailsWidget extends StatefulWidget {
  const BillingDetailsWidget({Key? key}) : super(key: key);

  @override
  _BillingDetailsWidgetState createState() => _BillingDetailsWidgetState();
}

class _BillingDetailsWidgetState extends State<BillingDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "Bill Summary",
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Item total",
                style: TextStyle(
                  fontSize: 12,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹196.00",
                style: TextStyle(
                  fontSize: 12,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coupon - (FLAT20)",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹-80.00",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Delivery charges",
                style: TextStyle(
                  fontSize: 12,
                  color: grey1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "₹26.00",
                style: TextStyle(
                  fontSize: 12,
                  color: grey1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Govt. taxes ",
                      style: TextStyle(
                        fontSize: 12,
                        color: grey1,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.info_outline,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "₹41.21",
                style: TextStyle(
                  fontSize: 12,
                  color: grey1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            thickness: 2,
            color: divider2,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Grand total",
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹183.21",
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
