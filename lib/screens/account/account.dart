import 'dart:developer';

import 'package:coconut/screens/account/widget/divider_widget.dart';
import 'package:coconut/screens/account/widget/menu_list.dart';
import 'package:coconut/screens/account/widget/name_card.dart';
import 'package:coconut/screens/navigation/navigation.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  String userName = "Tarun Reddy";
  String userID = "123";
  String userEmail = "tarunreddy@gmail.com";
  String userMobileNo = "";

  @override
  void initState() {
    super.initState();
    // getUserData();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
            "My Account",
            style: TextStyle(fontSize: 18, color: white),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  NameCard(
                    userName: userName,
                    userEmail: userEmail,
                    userMobileNo: userMobileNo,
                  ),
                  const HorizontalDividerWidget(),
                  MenuList(
                    label: "Privacy Policy",
                    subLabel: "Manage your privacy preferences",
                  ),
                  const HorizontalDividerWidget(),
                  MenuList(
                    label: "Change Password",
                    subLabel: "Change user password",
                    onclick: () {
                      log("Change Password");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const ChangePassword()),
                      // );
                    },
                  ),
                  // HorizentalDividerWidget(),
                  // MenuList(
                  //   label: "FAQ'S",
                  // ),
                  const HorizontalDividerWidget(),
                  MenuList(
                    label: "App Tour",
                    subLabel: "Start the application tour now",
                    onclick: () async {
                      await Future.delayed(Duration(milliseconds: 250), () {
                        // Navigator.of(context)
                        //     .pushNamed(AppTutorial.routeName, arguments: false);
                      });
                    },
                  ),
                  HorizontalDividerWidget(),
                  const MenuList(
                    label: "Rate Us",
                    subLabel: "Rate us on Play Store",
                  ),
                  const HorizontalDividerWidget(),
                  const MenuList(
                    label: "Feedback",
                    subLabel: "Please provide your feedback",
                  ),
                  const HorizontalDividerWidget(),
                  const MenuList(
                    label: "About Us",
                    subLabel: "Know about Safelifts",
                  ),
                  const HorizontalDividerWidget(),
                  const MenuList(
                    label: "App Version",
                    subLabel: "1.0.0",
                    showRightArrow: false,
                  ),
                  const HorizontalDividerWidget(),
                  MenuList(
                    label: "Logout",
                    showRightArrow: false,
                    onclick: () async {
                      log("User logout");
                      SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.clear();
                      await Future.delayed(Duration(milliseconds: 250),
                          () async {
                        // Navigator.of(context).pushNamedAndRemoveUntil(
                        //     LoginScreen.routeName,
                        //     (Route<dynamic> route) => false);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
