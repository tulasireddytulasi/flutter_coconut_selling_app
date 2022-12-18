import 'package:coconut/screens/cart/widgets/add_items_button.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 10),
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
              decoration: const BoxDecoration(
                  //   border: Border.all(color: black, width: 1),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: _screenWidth / 2,
                    child: const Text(
                      "Tender Coconut 1 pc (Approx 800 g - 1500 g)",
                      softWrap: true,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: _screenWidth / 2,
                    margin: const EdgeInsets.only(top: 4),
                    child: const Text(
                      "PRIVATE LABEL",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, color: grey1),
                    ),
                  ),
                  Container(
                    width: _screenWidth / 2,
                    margin: const EdgeInsets.only(top: 4),
                    child: const Text(
                      "₹49.00",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const AddItemButton(),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
