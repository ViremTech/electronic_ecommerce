import 'package:electronic_ecommerce/components/theme.dart';
import 'package:electronic_ecommerce/models/products.dart';

import 'package:flutter/material.dart';

class Shopmodel extends ChangeNotifier {
  List<Product> myProduct = [
    const Product(
        backColor: pink,
        imagePath: 'assets/images/camera.png',
        price: '4,85',
        productName: 'Camera',
        rating: 4.9),
    const Product(
        backColor: green,
        imagePath: 'assets/images/headphone.png',
        price: '1,119',
        productName: 'Headphone',
        rating: 4.9),
  ];

  List<Product> cart = [];

  void addToCart(Product product, int quantity) {
    for (int i = 0; i < quantity; i++) {
      cart.add(product);
    }
    notifyListeners();
  }

  void removeItem(Product product) {
    cart.remove(product);
    notifyListeners();
  }
}
