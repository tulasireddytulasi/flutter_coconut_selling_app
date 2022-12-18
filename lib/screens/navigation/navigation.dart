import 'dart:io';

import 'package:coconut/screens/account/account.dart';
import 'package:coconut/screens/cart/cart.dart';
import 'package:coconut/screens/dashboard/dashboard.dart';
import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavbar extends StatefulWidget {
  static const routeName = "/bottom_navbar";

  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  // ignore: unused_field
  final int _selectedItem = 0;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    super.initState();
    //  checkInternet(context: context);
  }

  final _screens = [
    const DashBoard(),
    const Cart(),
    const MyAccount(),
  ];
  int _currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          defaultSelectedIndex: 0,
          onChange: (val) {
            setState(() {
              _currentScreen = val;
              switch (_currentScreen) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyAccount()),
                  );
                  break;
              }
            });
          },
          titles: const ["Dashboard", "Cart", "Account"],
          imgurls: const [homeIcon, cartIcon, userIcon],
        ),
        body: _screens[0],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> titles;
  final List<String> imgurls;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.onChange,
      required this.titles,
      required this.imgurls});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<String> _titles = [];
  List<String> _imgurls = [];
  List<String>? caseIdList;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _titles = widget.titles;
    _imgurls = widget.imgurls;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _titles.length; i++) {
      _navBarItemList.add(buildNavBarItem(
        i,
        _titles[i],
        _imgurls[i],
      ));
    }

    return Container(
      color: LAVENDER_PINOCCHIO,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(int index, String title, String imgurl) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor:
                      index == _selectedIndex ? RANGOON_GREEN : blueGrey200,
                  child: Image.asset(
                    imgurl,
                    width: 22,
                    height: 22,
                    color: index == _selectedIndex ? white : black,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    color: index == _selectedIndex ? RANGOON_GREEN : black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
