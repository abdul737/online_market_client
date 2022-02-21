import 'package:flutter/widgets.dart';
import 'package:online_market_client/screens/cart/cart_screen.dart';
import 'package:online_market_client/screens/complete_profile/complete_profile_screen.dart';
import 'package:online_market_client/screens/details/details_screen.dart';
import 'package:online_market_client/screens/home/home_screen.dart';
import 'package:online_market_client/screens/login_success/login_success_screen.dart';
import 'package:online_market_client/screens/otp/otp_screen.dart';
import 'package:online_market_client/screens/profile/profile_screen.dart';
import 'package:online_market_client/screens/sign_in/sign_in_screen.dart';
import 'package:online_market_client/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
