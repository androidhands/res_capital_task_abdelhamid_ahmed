import 'package:res_capital_task_abdelhamid_ahmed/core/error/exceptions.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/data_sources/cart_remote_data_source.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/repositories/cart_repository.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource? cartRemoteDataSource;

  CartRepositoryImpl({this.cartRemoteDataSource});

  @override
  Future<Either<Failure, List<Cart>>> getCart() async {
    try {
      var results = await cartRemoteDataSource!.getCart();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
