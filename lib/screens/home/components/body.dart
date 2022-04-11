import 'package:flutter/material.dart';
import 'package:online_market_client/screens/home/components/carousel_bar.dart';

import 'categories.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 10),
            CarouselBar(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: 30),
            PopularProducts(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
