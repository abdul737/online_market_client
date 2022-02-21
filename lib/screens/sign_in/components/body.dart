import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_market_client/components/no_account_text.dart';
import 'package:online_market_client/components/socal_card.dart';

import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: (20)),
        // child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your phone number",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SignForm(),
          ],
        ),
      ),
    );
  }
}
