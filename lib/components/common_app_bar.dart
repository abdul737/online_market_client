import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_market_client/constants.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    required this.title,
    this.subtitle = '',
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: kStatusBarColor,
        statusBarIconBrightness: kStatusBarIconBrightness,
        statusBarBrightness: kStatusBarBrightness,
      ),
      title: Column(
        children: [
          Text(title, style: const TextStyle(color: kAppBarTextColor)),
          if (subtitle != '')
            Text(
              subtitle,
              style: const TextStyle(color: kAppBarTextColor, fontSize: 14),
            )
        ],
      ),
    );
  }
}
