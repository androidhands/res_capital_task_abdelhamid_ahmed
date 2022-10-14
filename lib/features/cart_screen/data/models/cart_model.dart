import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:meta/meta.dart';

class CartModel extends Cart {
  CartModel(
      {@required product,
      @required description,
      @required count,
      @required totalPrice})
      : super(product, description, count, totalPrice);

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
        product: json['product'],
        description: json['description'],
        count: json['count'],
        totalPrice: json['totalPrice']);
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product,
      'description': description,
      'count': count,
      'totalPrice': totalPrice,
    };
  }
}
