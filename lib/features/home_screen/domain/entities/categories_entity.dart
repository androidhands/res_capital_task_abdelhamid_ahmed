import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';

class Categories extends Equatable {
  final String? category;
  final Color? color;

  const Categories(this.category, this.color);
 


  @override
  List<Object?> get props =>[category,color];
}
