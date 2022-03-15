import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';
import 'package:online_market_client/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Your cart',
        subtitle: "${demoCarts.length} items",
      ),
      body: const Body(),
      bottomNavigationBar:  CheckoutCard(total: , ),
    );
  }
}
