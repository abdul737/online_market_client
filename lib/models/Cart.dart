import 'Product.dart';

class Cart {
  final Product product;
  int numOfItem;
  Cart({required this.product, required this.numOfItem});

  void setNumOfItem(numOfItem) {
    this.numOfItem = numOfItem;
  }
}
