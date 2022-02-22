import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavourite;

  const FavoriteWidget({
    Key? key,
    required this.isFavourite,
  }) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFavourite2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(2)),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: isFavourite2 ? const Color(0xFFFFE6E6) : const Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: TextButton(
        onPressed: _toggleFavorite,
        child: SvgPicture.asset(
          "assets/icons/Heart Icon_2.svg",
          color:
              isFavourite2 ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
          height: getProportionateScreenWidth(20),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (isFavourite2) {
        isFavourite2 = false;
      } else {
        isFavourite2 = true;
      }
    });
  }
}
