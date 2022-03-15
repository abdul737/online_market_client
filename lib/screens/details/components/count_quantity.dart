import 'package:flutter/material.dart';
import 'package:online_market_client/components/rounded_icon_btn.dart';

const minQuantity = 1;
const maxQuantity = 100;

class CountQuantityWidget extends StatefulWidget {
  final int quantity;

  const CountQuantityWidget({
    Key? key,
    this.quantity = 1,
  }) : super(key: key);

  @override
  _CountQuantityWidgetState createState() => _CountQuantityWidgetState();
}

class _CountQuantityWidgetState extends State<CountQuantityWidget> {
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    quantity = widget.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconBtn(icon: Icons.remove, press: _subtractQuantity),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 18,
          child: Text('$quantity'),
        ),
        RoundedIconBtn(icon: Icons.add, press: _addQuantity)
      ],
    );
  }

  void _addQuantity() {
    if (maxQuantity > quantity) {
      setState(() {
        quantity += 1;
      });
    }
  }

  void _subtractQuantity() {
    if (minQuantity < quantity) {
      setState(() {
        quantity -= 1;
      });
    }
  }
}
