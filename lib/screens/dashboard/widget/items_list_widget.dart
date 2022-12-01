import 'package:coconut/screens/reusable_widgets/reusable_button.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class ItemsListWidget extends StatefulWidget {
  const ItemsListWidget({Key? key}) : super(key: key);

  @override
  _ItemsListWidgetState createState() => _ItemsListWidgetState();
}

class _ItemsListWidgetState extends State<ItemsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return const ItemCardWidget();
          }),
    );
  }
}

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: black, width: 1),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  greenCoconut,
                  width: 220,
                  //getSimilarMoviesImageWidth(screenSize: _screenWidth),
                  height: 150,
                  //getSimilarMoviesImageHeight(screenSize: _screenWidth),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "Tender Coconut 1 pc (Approx 800 g - 1500 g) Tender Coconut 1 pc (Approx 800 g - 1500 g)",
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: black),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "PRIVATE LABEL",
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: grey1),
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 10),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              text: const TextSpan(children: [
                TextSpan(
                  text: "M.R.P:",
                  style: TextStyle(
                      fontSize: 18,
                      color: black,
                      fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: " ₹ 49.00",
                  style: TextStyle(
                      fontSize: 18, color: black, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
            child: ProceedButton(
              buttonWidth: 190,
              bottomPAdding: 6,
              topPadding: 6,
              callingAPI: () {},
              borderRadius: 6,
              text: "Add to cart",
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
