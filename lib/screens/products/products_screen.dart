import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';
import 'package:online_market_client/screens/products/components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: "Products",
      ),
      body: Body(),
    );
  }
}
