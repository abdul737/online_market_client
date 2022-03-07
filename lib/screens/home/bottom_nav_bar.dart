import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_market_client/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            color: inActiveIconColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            color: kPrimaryColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Heart Icon.svg",
            color: inActiveIconColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Heart Icon.svg",
            color: kPrimaryColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Chat bubble Icon.svg",
            color: inActiveIconColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Chat bubble Icon.svg",
            color: kPrimaryColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/User Icon.svg",
            color: inActiveIconColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/User Icon.svg",
            color: kPrimaryColor,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
    // return Container(
    //   padding: const EdgeInsets.symmetric(vertical: 14),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     boxShadow: [
    //       BoxShadow(
    //         offset: const Offset(0, -15),
    //         blurRadius: 20,
    //         color: const Color(0xFFDADADA).withOpacity(0.15),
    //       ),
    //     ],
    //     borderRadius: const BorderRadius.only(
    //       topLeft: Radius.circular(40),
    //       topRight: Radius.circular(40),
    //     ),
    //   ),
    //   child: SafeArea(
    //       top: false,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           IconButton(
    //             icon: SvgPicture.asset(
    //               "assets/icons/Shop Icon.svg",
    //               color: MenuState.home == selectedMenu
    //                   ? kPrimaryColor
    //                   : inActiveIconColor,
    //             ),
    //             onPressed: () =>
    //                 Navigator.pushNamed(context, HomeScreen.routeName),
    //           ),
    //           IconButton(
    //             icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
    //             onPressed: () {},
    //           ),
    //           IconButton(
    //             icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
    //             onPressed: () {},
    //           ),
    //           IconButton(
    //             icon: SvgPicture.asset(
    //               "assets/icons/User Icon.svg",
    //               color: MenuState.profile == selectedMenu
    //                   ? kPrimaryColor
    //                   : inActiveIconColor,
    //             ),
    //             onPressed: () =>
    //                 Navigator.pushNamed(context, ProfileScreen.routeName),
    //           ),
    //         ],
    //       )),
    // );
  }
}
