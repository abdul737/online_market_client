import 'package:flutter/material.dart';
import 'package:online_market_client/models/Cart.dart';
import 'package:online_market_client/screens/details/components/count_quantity.dart';

import '../../../constants.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: cart.product.id.toString(),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  cart.product.title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  maxLines: 2,
                ),
              ],
            ),
            Row(
              children: [
                CountQuantityWidget(isQuantity: cart.numOfItem),
                Text(
                  "\$${cart.product.price}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
