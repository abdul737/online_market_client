import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: 'Sign Up'),
      body: Body(),
    );
  }
}
