import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: 'Sign in'),
      body: Body(),
    );
  }
}
