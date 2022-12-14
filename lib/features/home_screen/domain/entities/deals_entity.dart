import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Deals extends Equatable {
  final String? product;
  final dynamic color;
  final int? pricesCount;
  final String? address;
  final double? newPrice;
  final double? oldPrice;
  bool? isFavourite;

  Deals(this.product, this.color, this.pricesCount, this.address, this.newPrice,
      this.oldPrice, this.isFavourite);

  @override
  List<Object?> get props =>
      [product, color, pricesCount, address, newPrice, oldPrice, isFavourite];
}
