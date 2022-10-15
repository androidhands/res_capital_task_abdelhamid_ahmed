import 'package:equatable/equatable.dart';

class Categories extends Equatable {
  final String? category;
  final dynamic color;

  const Categories(this.category, this.color);
 


  @override
  List<Object?> get props =>[category,color];
}
