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
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    isFavourite = widget.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(2)),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: _toggleFavorite,
        child: SvgPicture.asset(
          "assets/icons/Heart Icon_2.svg",
          color:
              isFavourite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
          height: getProportionateScreenWidth(20),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (isFavourite) {
        isFavourite = false;
      } else {
        isFavourite = true;
      }
    });
  }
}
