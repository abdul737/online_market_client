import 'package:flutter/material.dart';
import 'package:online_market_client/components/product_card.dart';
import 'package:online_market_client/enums.dart';
import 'package:online_market_client/models/Product.dart';

const _aspectRatio = 0.59;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: _aspectRatio,
        crossAxisSpacing: 10,
      ),
      padding: const EdgeInsets.all(10),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        int i = index % demoProducts.length;
        return ProductCard(
          product: demoProducts[i],
          aspectRatio: _aspectRatio,
          size: Sizes.small,
        );
      },
    );
  }
}
