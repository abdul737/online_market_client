import 'package:flutter/foundation.dart';
import 'package:online_market_client/models/Cart.dart';
import 'package:online_market_client/models/Product.dart';

class Data with ChangeNotifier, DiagnosticableTreeMixin {
  // Demo data for our cart
  List<Cart> _demoCarts = [
    Cart(product: demoProducts[0], numOfItem: 2),
    Cart(product: demoProducts[1], numOfItem: 1),
    Cart(product: demoProducts[3], numOfItem: 1),
  ];

  List<Cart> get demoCarts => _demoCarts;

  String get getSum {
    var sum = demoCarts.fold<double>(0, (value, element) {
      return value + element.numOfItem * element.product.price;
    });

    return sum.toStringAsFixed(2);
  }

  void removeAt(int index) {
    _demoCarts.removeAt(index);
    notifyListeners();
  }

  int getQuantity(int index) => _demoCarts[index].numOfItem;

  void addQuantity(int index) {
    _demoCarts[index].setNumOfItem(_demoCarts[index].numOfItem + 1);
    notifyListeners();
  }

  void subtractQuantity(int index) {
    _demoCarts[index].setNumOfItem(_demoCarts[index].numOfItem - 1);
    notifyListeners();
  }
}
