import 'package:coconut/screens/explore_items/widgets/heading.dart';
import 'package:coconut/screens/explore_items/widgets/items_list.dart';
import 'package:coconut/screens/navigation/navigation.dart';
import 'package:coconut/utils/colors.dart';
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 30),
              Heading(),
              SizedBox(height: 30),
              ItemsList(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Heading(),
              ),
              ItemsList(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Heading(),
              ),
              ItemsList(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Heading(),
              ),
              ItemsList(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
