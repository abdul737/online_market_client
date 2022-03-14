import 'package:flutter/material.dart';
import 'package:online_market_client/models/Cart.dart';

import 'cart_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void onDelete(index) {
    setState(() {
      demoCarts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => CartCard(
          cart: demoCarts[index],
          context: context,
          onDelete: () => onDelete(index),
        ),
      ),
    );
  }
}
