import 'package:meta/meta.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';

class DealsModel extends Deals {
  DealsModel(
      {@required product,
      @required color,
      @required pricesCount,
      @required address,
      @required newPrice,
      @required oldPrice,
      @required isFavourite})
      : super(product, color, pricesCount, address, newPrice, oldPrice,
            isFavourite);
  factory DealsModel.fromJson(Map<String, dynamic> json) {
    return DealsModel(
        product: json['product'],
        color: json['color'],
        pricesCount: json['pricesCount'],
        address: json['address'],
        newPrice: json['newPrice'],
        oldPrice: json['oldPrice'],
        isFavourite: json['isFavourite']);
  }
  Map<String, dynamic> toJson() {
    return {
      '': product,
      'color': color,
      'pricesCount': pricesCount,
      'address': address,
      'newPrice': newPrice,
      'oldPrice': oldPrice,
      'isFavourite': isFavourite,
    };
  }
}
