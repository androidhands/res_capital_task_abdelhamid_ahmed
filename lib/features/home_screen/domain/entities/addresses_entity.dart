import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String? addressType;
  final String? address;
  final String? street;

  const Address(this.addressType, this.address, this.street);

  @override
  List<Object?> get props =>[addressType,address,street];
}
