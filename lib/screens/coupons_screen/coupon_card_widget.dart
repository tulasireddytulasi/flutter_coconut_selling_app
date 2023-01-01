import 'package:coconut/screens/reusable_widgets/dash_line_divider_widget.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatefulWidget {
  const CouponCard(
      {Key? key,
      required this.label,
      required this.couponCode,
      required this.description,
      required this.shortDescription})
      : super(key: key);
  final String label;
  final String couponCode;
  final String description;
  final String shortDescription;

  @override
  _CouponCardState createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: _screenWidth,
      height: 160,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 1),
              color: Colors.deepOrange,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                widget.label,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      widget.couponCode,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: _screenWidth / 3),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, true);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, right: 10),
                      child: const Text(
                        "APPLY",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                widget.shortDescription,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: _screenWidth / 1.5,
                child:
                    const DashLineDivider(color: Colors.grey, dashWidth: 4.0),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: _screenWidth / 1.5,
                child: Text(
                  widget.description,
                  softWrap: true,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: _screenWidth / 1.5,
                child: const Text(
                  "+ MORE",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
