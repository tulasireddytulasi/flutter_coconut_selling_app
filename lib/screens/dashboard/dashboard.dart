import 'package:coconut/screens/dashboard/widget/icon_text_widget.dart';
import 'package:coconut/screens/dashboard/widget/items_list_widget.dart';
import 'package:coconut/screens/dashboard/widget/title_card.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:coconut/utils/constants.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  static const routeName = "/dashBoard";
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final String userName = "Tarun Reddy";
  List<String> iconsList = [
    fullCoconut,
    topCutCoconut,
    halfCutCoconut,
    coconutTree2
  ];
  List<String> labelsList = [
    "Curated service providers",
    "PMS Notifications",
    "OR Code",
    "Help/Support"
  ];
  List<String> descriptionList = [
    serviceProvider,
    notification,
    qrCode,
    helpSupport
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    welcome,
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    userName,
                    style: const TextStyle(
                      color: black,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset(
                    coconutBicycle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MaintenanceCard(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 5, bottom: 20, left: 5),
                  child: const Text(
                    "Coconuts Technologies Private Limited Company’s service virtues are the backbone of our organization.",
                    style: TextStyle(
                      color: black,
                      fontSize: 12,
                    ),
                  ),
                ),
                GridView.builder(
                  // padding: const EdgeInsets.all(16),
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: iconsList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return IconsWidget(
                      label: labelsList[index],
                      description: descriptionList[index],
                      icon: iconsList[index],
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 2, bottom: 10),
                  child: const Text(
                    "Products",
                    style: TextStyle(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 320, child: ItemsListWidget()),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.asset(
                    coconutMan,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.asset(
                    coconutMan1,
                    height: 200,
                    width: 320,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
