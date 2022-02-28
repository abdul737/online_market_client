import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_market_client/components/common_app_bar.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    final phoneNumber = ModalRoute.of(context)!.settings.arguments as int;
    return const Scaffold(
      appBar: CommonAppBar(
        title: "OTP Verification",
      ),
      body: Body(phoneNumber: phoneNumber),
    );
  }
}
