import 'package:flutter/material.dart';
import 'package:online_market_client/constants.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  final int phoneNumber;
  const Body({required this.phoneNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OTP Verification",
                  style: headingStyle,
                ),
                Text("We sent your code to +998 $phoneNumber"),
              ],
            ),
          ),
          const Expanded(
            flex: 4,
            child: OtpForm(),
          ),
          Expanded(
            flex: 4,
            child: buildResendOTPCode(),
          ),
        ],
      ),
    );
  }

  Widget buildResendOTPCode() {
    return TweenAnimationBuilder<Duration>(
      tween: Tween(
          begin: const Duration(seconds: otpResendTimeout), end: Duration.zero),
      duration: const Duration(seconds: otpResendTimeout),
      builder: (_, Duration value, child) {
        final seconds = value.inSeconds;
        if (seconds > 0) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You can resend the code in "),
              Text(
                seconds.toString(),
                style: const TextStyle(color: kPrimaryColor),
              ),
            ],
          );
        }
        return TextButton(
          onPressed: () {},
          child: const Text("Resend OTP Code"),
        );
      },
    );
  }
}
