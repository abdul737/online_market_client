import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBar extends StatelessWidget {
  CarouselBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 85,
          autoPlayInterval: const Duration(milliseconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 380),
          autoPlay: true,
        ),
        items: a.toList());
  }

  List<Widget> a = [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('A Summer Surpise'),
          Text(
            'Cashback 20%',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 30),
          ),
        ],
      ),
      color: Colors.deepPurple,
    ),
  ];
}
