import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_market_client/components/default_button.dart';

import '../../../constants.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({Key? key, required this.total}) : super(key: key);
  final double total;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: '$total',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
