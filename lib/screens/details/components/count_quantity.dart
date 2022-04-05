import 'package:flutter/material.dart';
import 'package:online_market_client/components/rounded_icon_btn.dart';

class CountQuantityWidget extends StatelessWidget {
  final int quantity;
  final void Function() addQuantity, subtractQuantity;

  const CountQuantityWidget({
    Key? key,
    required this.quantity,
    required this.addQuantity,
    required this.subtractQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconBtn(icon: Icons.remove, press: subtractQuantity),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 18,
          child: Text('$quantity'),
        ),
        RoundedIconBtn(icon: Icons.add, press: addQuantity)
      ],
    );
  }
}
