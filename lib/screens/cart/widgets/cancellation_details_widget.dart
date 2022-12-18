import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class CancellationInfoWidget extends StatefulWidget {
  const CancellationInfoWidget({Key? key}) : super(key: key);

  @override
  _CancellationInfoWidgetState createState() => _CancellationInfoWidgetState();
}

class _CancellationInfoWidgetState extends State<CancellationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: white,
        //  border: Border.all(color: black, width: 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "Cancellation Policy",
            style: TextStyle(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "100% cancellation fee will be applicable "
            "if you decide to cancel the order anytime after order placement.",
            style: TextStyle(
                color: grey1, fontSize: 12, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
