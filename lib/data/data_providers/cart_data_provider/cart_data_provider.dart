import 'dart:developer';

import 'package:flutter_assignment_fengo/data/data_providers/produts.dart';
import 'package:flutter_assignment_fengo/data/models/product_model.dart';
import 'package:flutter_assignment_fengo/data/repositories/cart_repo/cart_repo.dart';

class CartDataProvider implements CartRepo {
  static Map<ProductModel, int> cartItems = {};
  void initCart() {
    Products products = Products.fromJson(productJson);
    for (ProductModel productModel in products.products) {
      cartItems[productModel] = 2;
    }
  }

  @override
  Map<ProductModel, int> getCartItems() {
    return cartItems;
  }

  @override
  void addCount(int id) {
    for (ProductModel productModel in cartItems.keys) {
      if (productModel.id == id) {
        int count = cartItems[productModel]!;
        cartItems[productModel] = count + 1;
      }
    }
  }

  @override
  void decreseCount(int id) {
    for (ProductModel productModel in cartItems.keys) {
      if (productModel.id == id) {
        int count = cartItems[productModel]!;
        cartItems[productModel] = count - 1;
      }
    }
  }
}
