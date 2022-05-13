import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_market_client/constants.dart';
import 'package:online_market_client/screens/cart/cart_screen.dart';
import 'package:online_market_client/screens/home/home_screen.dart';
import 'package:online_market_client/screens/products/products_screen.dart';
import 'package:online_market_client/screens/profile/profile_screen.dart';

const Color inActiveIconColor = Color(0xFFB6B6B6);
const _bottomNavIcons = [
  "assets/icons/Shop Icon.svg",
  "assets/icons/Heart Icon.svg",
  "assets/icons/Cart Icon.svg",
  "assets/icons/User Icon.svg",
];

const List<Widget> _screenOptions = <Widget>[
  HomeScreen(),
  ProductsScreen(),
  CartScreen(),
  ProfileScreen()
];

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);
  static String routeName = "/navigation";

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: List<BottomNavigationBarItem>.of(
          _bottomNavIcons.map(
            (String iconName) => BottomNavigationBarItem(
              icon: SvgPicture.asset(iconName, color: inActiveIconColor),
              activeIcon: SvgPicture.asset(iconName, color: kPrimaryColor),
              label: '',
            ),
          ),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
