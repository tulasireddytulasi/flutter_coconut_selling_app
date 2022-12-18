import 'package:coconut/screens/orders_history_screen/widgets/ordered_items_widget.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class OrdersHistoryScreen extends StatefulWidget {
  const OrdersHistoryScreen({Key? key}) : super(key: key);

  @override
  _OrdersHistoryScreenState createState() => _OrdersHistoryScreenState();
}

class _OrdersHistoryScreenState extends State<OrdersHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: blueGrey200,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Orders history",
          style: TextStyle(fontSize: 18, color: white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 2,
                    color: black,
                  ),
                ),
                itemBuilder: (context, index) {
                  return const OrderedItemsWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
