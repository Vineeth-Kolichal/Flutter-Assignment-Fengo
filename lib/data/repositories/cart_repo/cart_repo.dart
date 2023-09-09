import 'package:flutter_assignment_fengo/data/models/product_model.dart';

abstract class CartRepo {
  Map<ProductModel, int> getCartItems();
  void addCount(int id);
  void decreseCount(int id);
}
