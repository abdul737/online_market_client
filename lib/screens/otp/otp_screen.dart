import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    final phoneNumber = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffa000),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffc67100),
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        title: const Text("OTP Verification"),
      ),
      body: Body(phoneNumber: phoneNumber),
    );
  }
}
