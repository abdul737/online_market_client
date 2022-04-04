import 'package:flutter/widgets.dart';
import 'package:online_market_client/screens/cart/cart_screen.dart';
import 'package:online_market_client/screens/complete_profile/complete_profile_screen.dart';
import 'package:online_market_client/screens/details/details_screen.dart';
import 'package:online_market_client/screens/home/home_screen.dart';
import 'package:online_market_client/screens/navigation/navigation_screen.dart';
import 'package:online_market_client/screens/otp/otp_screen.dart';
import 'package:online_market_client/screens/products/products_screen.dart';
import 'package:online_market_client/screens/profile/profile_screen.dart';
import 'package:online_market_client/screens/sign_in/sign_in_screen.dart';
import 'package:online_market_client/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  NavigationScreen.routeName: (context) => const NavigationScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
};
