import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';

class Offers extends Equatable {
  final String? type;
  final String? product;
  final Color? color;
  final double? newPrice;
  final double? oldPrice;
  final String? note;

  const Offers(this.type, this.product, this.color, this.newPrice,
      this.oldPrice, this.note);

  @override
  List<Object?> get props => [type, product, color, newPrice, oldPrice, note];
}
