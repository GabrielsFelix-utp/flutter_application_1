import 'package:flutter_application_1/src/auth/Models/item_model.dart';

class CartItemModel {
  ItemModel item;
  int quantity;

  CartItemModel({
    required this.item,
    required this.quantity,
  });

  double totalprice() => item.price * quantity;
}
