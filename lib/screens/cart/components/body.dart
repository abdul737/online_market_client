import 'package:flutter/material.dart';
import 'package:online_market_client/components/provider.dart';
import 'package:online_market_client/models/Cart.dart';
import 'package:provider/provider.dart';

import 'cart_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void onDelete(index) {
    context.read<Data>().removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    List<Cart> demoCarts = context.watch<Data>().demoCarts;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => CartCard(
            cart: demoCarts[index],
            index: index,
            context: context,
            onDelete: () => onDelete(index)),
      ),
    );
  }
}
