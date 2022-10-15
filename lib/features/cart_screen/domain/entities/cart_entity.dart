import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Cart extends Equatable {
  final String? product;
  final String? description;
  int count;
  double? totalPrice;
  dynamic color;
  double price;

  Cart(this.product, this.description, this.count, this.totalPrice, this.color,
      this.price);

  @override
  List<Object?> get props =>
      [product, description, count, totalPrice, color, price];

   setCount(int num) {
    count = num;
  }

   setPrice(double num) {
    totalPrice = num;
  }


}
