import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final String? product;
  final String? description;
  int? count;
  double? totalPrice;

  Cart(this.product, this.description, this.count, this.totalPrice);

  @override
  List<Object?> get props => [product, description, count, totalPrice];
}
