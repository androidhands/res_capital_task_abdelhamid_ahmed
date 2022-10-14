import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/exceptions.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/models/cart_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';

abstract class CartRemoteDataSource {

  Future<List<Cart>> getCart();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
 
  @override
  Future<List<Cart>> getCart() async {
    try {
      final String response =
          await rootBundle.loadString('lib/core/app_constants/cart.json');

      final data = await jsonDecode(response);

      return List<Cart>.from(data.map((e) => CartModel.fromJson(e)));
    } on FlutterError catch (e) {
      throw ServerException(e.message);
    }
  }

  
}
