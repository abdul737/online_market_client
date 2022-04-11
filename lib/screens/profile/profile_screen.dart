import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: "Profile"),
      body: Body(),
    );
  }
}
