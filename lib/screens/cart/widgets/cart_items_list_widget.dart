import 'package:coconut/screens/cart/widgets/cart_items_widget.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class CardItemsWidget extends StatefulWidget {
  const CardItemsWidget({Key? key}) : super(key: key);

  @override
  _CardItemsWidgetState createState() => _CardItemsWidgetState();
}

class _CardItemsWidgetState extends State<CardItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
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
                "Your Orders",
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => const Divider(
                height: 2,
                thickness: 1,
                color: divider2,
              ),
              itemBuilder: (context, index) {
                return const Items();
              },
            ),
          ),
        ],
      ),
    );
  }
}
