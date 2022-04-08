import 'package:flutter/material.dart';

final List<Widget> banner = [
  Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 15,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFF4A3298),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(text: "A Summer Surprise\n"),
          TextSpan(
            text: "Cashback 20%",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  )
];
