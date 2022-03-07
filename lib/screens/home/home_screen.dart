import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_market_client/constants.dart';
import 'package:online_market_client/screens/home/bottom_nav_bar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: kBackgroundColor,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      child: Scaffold(
        body: Body(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
