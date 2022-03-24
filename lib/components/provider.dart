import 'package:flutter/material.dart';
import 'package:online_market_client/models/Cart.dart';

class Data with ChangeNotifier {
  String _cart = '';
  String get getData => _cart;
  void changCart(String nawString) {
    _cart = nawString;
    notifyListeners();
  }
}
