import 'package:meta/meta.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';

class CategoriesModel extends Categories {
  const CategoriesModel({@required category, @required color})
      : super(category, color);
  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(category: json['category'], color: json['color']);
  }
  Map<String, dynamic> toJson() {
    return {'category': category, 'color': color};
  }
}
