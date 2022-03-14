import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_market_client/enums.dart';

import '../size_config.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavourite;
  final Sizes size;

  const FavoriteWidget({
    Key? key,
    this.isFavourite = false,
    this.size = Sizes.medium,
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
      width: Sizes.medium == widget.size
          ? getProportionateScreenWidth(40)
          : getProportionateScreenWidth(30),
      height: Sizes.medium == widget.size
          ? getProportionateScreenWidth(40)
          : getProportionateScreenWidth(30),
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
