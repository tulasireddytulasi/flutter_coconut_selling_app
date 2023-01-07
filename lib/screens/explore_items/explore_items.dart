import 'package:coconut/screens/explore_items/widgets/items_list.dart';
import 'package:coconut/screens/navigation/navigation.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class ExploreItems extends StatefulWidget {
  const ExploreItems({Key? key}) : super(key: key);

  @override
  _ExploreItemsState createState() => _ExploreItemsState();
}

class _ExploreItemsState extends State<ExploreItems> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushNamedAndRemoveUntil(
            BottomNavbar.routeName, (Route<dynamic> route) => false);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blueGrey200,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  BottomNavbar.routeName, (Route<dynamic> route) => false);
            },
          ),
          title: const Text(
            "Explore All Items",
            style: TextStyle(fontSize: 18, color: white),
          ),
          centerTitle: false,
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 10, top: 0),
                    child: const Text(
                      "Great deals on top picks",
                      style: TextStyle(
                          fontSize: 14, color: red, fontFamily: montserratBold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: red,
                      radius: 10,
                      child: Icon(
                        Icons.arrow_forward,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const ItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
