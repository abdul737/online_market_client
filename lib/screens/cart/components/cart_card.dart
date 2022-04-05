import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_market_client/components/provider.dart';
import 'package:online_market_client/models/Cart.dart';
import 'package:online_market_client/screens/details/components/count_quantity.dart';
import 'package:online_market_client/screens/details/details_screen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.context,
    required this.cart,
    required this.index,
    required this.onDelete,
  }) : super(key: key);

  final Cart cart;
  final int index;
  final BuildContext context;
  final void Function() onDelete;

  _wrapWithGestureDetector(Widget widget) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailsScreen.routeName,
        arguments: ProductDetailsArguments(
          product: cart.product,
        ),
      ),
      child: widget,
    );
  }

  void _addQuantity(index) {
    int quantity = context.read<Data>().getQuantity(index);
    if (maxQuantity > quantity) {
      context.read<Data>().addQuantity(index);
    }
  }

  void _subtractQuantity(index) {
    int quantity = context.read<Data>().getQuantity(index);
    if (minQuantity < quantity) {
      context.read<Data>().subtractQuantity(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _wrapWithGestureDetector(
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
            ),
            IntrinsicWidth(
              child: Column(
                children: [
                  Row(
                    children: [
                      _wrapWithGestureDetector(
                        Text(
                          cart.product.title,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CountQuantityWidget(
                            quantity: cart.numOfItem,
                            addQuantity: () => _addQuantity(index),
                            subtractQuantity: () => _subtractQuantity(index)),
                      ),
                      _wrapWithGestureDetector(
                        Text(
                          "\$${cart.product.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          iconSize: 30,
          onPressed: onDelete,
          icon: SvgPicture.asset("assets/icons/Trash.svg"),
        ),
      ],
    );
  }
}
