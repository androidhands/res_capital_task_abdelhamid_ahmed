import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/exceptions.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/models/addresses_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/models/cart_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/models/categories_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/models/deals_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/models/offers_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<Address>> getAddress();
  Future<List<Categories>> getCategories();
  Future<List<Offers>> getOffers();
  Future<List<Deals>> getDeals();
  Future<List<Cart>> getCart();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<List<Address>> getAddress() async {
    try {
      final String response =
          await rootBundle.loadString('lib/core/app_constants/addresses.json');

      final data = await jsonDecode(response);

      return List<Address>.from(data.map((e) => AddressesModel.fromJson(e)));
    } on FlutterError catch (e) {
      throw ServerException(e.message);
    }
  }

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

  @override
  Future<List<Categories>> getCategories() async {
    try {
      final String response =
          await rootBundle.loadString('lib/core/app_constants/cart.json');

      final data = await jsonDecode(response);

      return List<Categories>.from(
          data.map((e) => CategoriesModel.fromJson(e)));
    } on FlutterError catch (e) {
      throw ServerException(e.message);
    }
  }

  @override
  Future<List<Deals>> getDeals() async {
    try {
      final String response =
          await rootBundle.loadString('lib/core/app_constants/cart.json');

      final data = await jsonDecode(response);

      return List<Deals>.from(data.map((e) => DealsModel.fromJson(e)));
    } on FlutterError catch (e) {
      throw ServerException(e.message);
    }
  }

  @override
  Future<List<Offers>> getOffers() async {
    try {
      final String response =
          await rootBundle.loadString('lib/core/app_constants/cart.json');

      final data = await jsonDecode(response);

      return List<Offers>.from(data.map((e) => OffersModel.fromJson(e)));
    } on FlutterError catch (e) {
      throw ServerException(e.message);
    }
  }
}
