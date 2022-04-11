import 'package:flutter/material.dart';
import 'package:online_market_client/components/product_card.dart';
import 'package:online_market_client/models/Product.dart';
import 'package:online_market_client/screens/products/products_screen.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            press: () => Navigator.pushNamed(
              context,
              ProductsScreen.routeName,
              arguments: ProductsScreenArguments(title: 'Popular Products'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      padding: const EdgeInsets.only(left: 20),
                    );
                  }
                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
