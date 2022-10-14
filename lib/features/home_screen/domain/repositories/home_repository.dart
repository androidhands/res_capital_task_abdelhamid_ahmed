import 'package:dartz/dartz.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';

abstract class HomeRepository{
    Future<Either<Failure,List<Address>>> getAddress();
  Future<Either<Failure,List<Categories>>> getCategories();
  Future<Either<Failure,List<Offers>>> getOffers();
  Future<Either<Failure,List<Deals>>> getDeals();
  Future<Either<Failure,List<Cart>>> getCart();
}