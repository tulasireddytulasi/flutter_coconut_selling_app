import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class AddItemButton extends StatefulWidget {
  const AddItemButton({Key? key}) : super(key: key);

  @override
  _AddItemButtonState createState() => _AddItemButtonState();
}

class _AddItemButtonState extends State<AddItemButton> {
  int noOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.1),
        border: Border.all(color: red, width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: noOfItems > 0
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      noOfItems -= 1;
                    });
                  },
                  child: const Text(
                    "−",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  noOfItems.toString(),
                  style: const TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      noOfItems += 1;
                    });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          : Container(
              alignment: Alignment.center,
              child: const Text(
                "ADD",
                style: TextStyle(
                  color: red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
