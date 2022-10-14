import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:meta/meta.dart';

class AddressesModel extends Address {
  const AddressesModel(
      {@required addressType, @required address, @required street})
      : super(addressType, address, street);
  factory AddressesModel.fromJson(Map<String, dynamic> json) {
    return AddressesModel(
        addressType: json['addressType'],
        address: json['address'],
        street: json['street']);
  }

  Map<String, dynamic> toJson() {
    return {
      'addressType':addressType,
      'address':address,
      'street':street
    };
  }
}
