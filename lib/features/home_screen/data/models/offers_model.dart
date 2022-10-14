import 'package:meta/meta.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';

class OffersModel extends Offers {
  const OffersModel(
      {@required type,
      @required product,
      @required color,
      @required newPrice,
      @required oldPrice,
      @required note})
      : super(type, product, color, newPrice, oldPrice, note);

  factory OffersModel.fromJson(Map<String, dynamic> json) {
    return OffersModel(
        type: json['type'],
        product: json['product'],
        color: json['color'],
        newPrice: json['newPrice'],
        oldPrice: json['oldPrice'],
        note: json['note']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'product': product,
      'color': color,
      'oldPrice': oldPrice,
      'note': note,
    };
  }
}
