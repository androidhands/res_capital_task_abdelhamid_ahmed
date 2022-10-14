import 'package:dartz/dartz.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';

abstract class CartRepository{
  Future<Either<Failure,List<Cart>>> getCart();
}