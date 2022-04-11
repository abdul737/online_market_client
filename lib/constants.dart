import 'package:flutter/material.dart';
import 'package:online_market_client/size_config.dart';

const kBackgroundColor = Color(0xFFF5F6F9);
const kPrimaryColor = Color(0xfff57c00);
const kStatusBarColor = Color(0xffbb4d00);
const kStatusBarIconBrightness = Brightness.light; // For Android (dark icons)
const kStatusBarBrightness = Brightness.dark; // For iOS (dark icons)
const kAppBarTextColor = Colors.black;

const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF4C4C4C);

const kAnimationDuration = Duration(milliseconds: 200);
const int carouselAutoplayDuration = 5;

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+"); // deprecated
final RegExp phoneNumberValidatorRegExp = RegExp(r"^\d{9}$");
const String kInvalidPhoneNumberError = "Enter Valid Phone number";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kEmailNullError = "Please Enter your phone number"; // deprecated
const String kAddressNullError = "Please Enter your address";

const int otpResendTimeout = 60;
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}

const int minQuantity = 1;
const int maxQuantity = 100;
