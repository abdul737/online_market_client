import 'package:flutter/material.dart';
import 'package:online_market_client/models/Cart.dart';
import 'package:online_market_client/screens/details/components/count_quantity.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
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
        IntrinsicWidth(
          child: Column(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${cart.product.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  CountQuantityWidget(
                    numOfItems: cart.numOfItem,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
