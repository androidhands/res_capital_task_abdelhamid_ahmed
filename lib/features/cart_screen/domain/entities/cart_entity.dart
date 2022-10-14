import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final String? product;
  final String? description;
  int? count;
  double? totalPrice;
  dynamic color;

  Cart(this.product, this.description, this.count, this.totalPrice,this.color);

  @override
  List<Object?> get props => [product, description, count, totalPrice,color];
}
