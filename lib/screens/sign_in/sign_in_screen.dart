import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffa000),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffc67100),
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Body(),
    );
  }
}
