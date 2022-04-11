import 'package:flutter/material.dart';
import 'package:online_market_client/components/common_app_bar.dart';
import 'package:online_market_client/screens/products/components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    final ProductsScreenArguments? args =
        ModalRoute.of(context)!.settings.arguments as ProductsScreenArguments?;
    final title = args == null ? 'Products' : args.title;

    return Scaffold(
      appBar: CommonAppBar(
        title: title,
      ),
      body: const Body(),
    );
  }
}

class ProductsScreenArguments {
  final String title;

  ProductsScreenArguments({required this.title});
}
