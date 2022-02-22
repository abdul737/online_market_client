import 'package:flutter/material.dart';
import 'package:online_market_client/components/rounded_icon_btn.dart';

class CountQuantityWidget extends StatefulWidget {
  const CountQuantityWidget({Key? key}) : super(key: key);

  @override
  _CountQuantityWidgetState createState() => _CountQuantityWidgetState();
}

class _CountQuantityWidgetState extends State<CountQuantityWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: (20)),
        RoundedIconBtn(icon: Icons.remove, press: _subtractQuantity),
        Text('$quantity'),
        RoundedIconBtn(icon: Icons.add, press: _addQuantity)
      ],
    );
  }

  void _addQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  void _subtractQuantity() {
    setState(() {
      if (2 <= quantity) {
        quantity -= 1;
      }
    });
  }
}
