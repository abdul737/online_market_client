import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_market_client/constants.dart';
import 'package:online_market_client/screens/home/components/discount_banner.dart';

class CarouselBar extends StatelessWidget {
  const CarouselBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 90,
          enlargeCenterPage: true,
          viewportFraction: 1,
          autoPlayInterval: const Duration(seconds: carouselAutoplayDuration),
          autoPlay: true,
        ),
        items: [
          const DiscountBanner(),
        ].toList());
  }
}
