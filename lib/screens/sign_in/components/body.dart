import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            const Expanded(
              flex: 7,
              child: SignForm(),
            ),
          ],
        ),
      ),
    );
  }
}
