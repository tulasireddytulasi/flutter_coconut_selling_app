import 'package:coconut/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  if (settings.name == BottomNavbar.routeName) {
    return MaterialPageRoute(builder: (context) => const BottomNavbar());
  } else {
    return MaterialPageRoute(builder: (context) => const BottomNavbar());
  }
}
