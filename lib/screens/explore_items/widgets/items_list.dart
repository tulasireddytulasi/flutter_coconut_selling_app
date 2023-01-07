import 'package:coconut/screens/cart/widgets/add_items_button.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 5),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 5, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: pinkPearl, width: 0.5),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          greenCoconut2,
                          width: 120,
                          height: 80,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Tender Coconut 1 pc (Approx 800 g - 1500 g)",
                      softWrap: true,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, color: black),
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "1 Pc",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: grey1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: grey, width: 1),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: const Text(
                                "₹100",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "₹100",
                                style: TextStyle(fontSize: 14, color: black),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        const AddItemButton(
                          width: 80,
                          height: 30,
                        ),
                      ],
                      mainAxisSize: MainAxisSize.max,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
