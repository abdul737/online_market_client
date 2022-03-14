import 'package:flutter/material.dart';
import 'package:online_market_client/enums.dart';
import 'package:online_market_client/models/Product.dart';
import 'package:online_market_client/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'favorite_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 0.6,
    this.padding = EdgeInsets.zero,
    this.size = Sizes.medium,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final EdgeInsetsGeometry padding;
  final Sizes size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  height: 40,
                  child: Text(
                    product.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Sizes.medium == size
                          ? getProportionateScreenWidth(13)
                          : getProportionateScreenWidth(12),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: Sizes.medium == size
                          ? getProportionateScreenWidth(18)
                          : getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FavoriteWidget(
                      isFavourite: product.isFavourite,
                      size: size,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
