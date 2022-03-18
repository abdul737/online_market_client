import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_market_client/models/Product.dart';

class CarouselBar extends StatelessWidget {
  CarouselBar({Key? key}) : super(key: key);
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: List.generate(demoProducts.length, (index) {
            return Image.asset('assets/images/Image Popular Product 2.png');
          }),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2,
            initialPage: 3,
          ),
        ),
        // ElevatedButton(
        //     onPressed: () => buttonCarouselController.nextPage(
        //         duration: const Duration(milliseconds: 100),
        //         curve: Curves.linear),
        //     child: const Text('->'))
      ]);
}
