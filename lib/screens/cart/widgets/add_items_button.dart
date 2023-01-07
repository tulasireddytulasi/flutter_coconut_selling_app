import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class AddItemButton extends StatefulWidget {
  const AddItemButton(
      {Key? key, this.width = 100, this.height = 40, this.noOfItems = 0})
      : super(key: key);

  final double width;
  final double height;
  final int noOfItems;

  @override
  _AddItemButtonState createState() => _AddItemButtonState();
}

class _AddItemButtonState extends State<AddItemButton> {
  late int noOfItems;

  @override
  void initState() {
    super.initState();
    noOfItems = widget.noOfItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.1),
        border: Border.all(color: red, width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: noOfItems > 0
          ? Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        noOfItems -= 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "−",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Text(
                  noOfItems.toString(),
                  style: const TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        noOfItems += 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "+",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : InkWell(
              onTap: () {
                setState(() {
                  noOfItems += 1;
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "ADD",
                  style: TextStyle(
                    color: red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }
}
