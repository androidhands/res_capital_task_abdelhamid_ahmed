import 'package:res_capital_task_abdelhamid_ahmed/core/error/exceptions.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/data_sources/home_remote_data_source.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource? homeRemoteDataSource;

  HomeRepositoryImpl({this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<Address>>> getAddress() async {
    try {
      var results = await homeRemoteDataSource!.getAddress();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Cart>>> getCart() async{
    try {
      var results = await homeRemoteDataSource!.getCart();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Categories>>> getCategories()async {
    try {
      var results = await homeRemoteDataSource!.getCategories();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Deals>>> getDeals()async {
    try {
      var results = await homeRemoteDataSource!.getDeals();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Offers>>> getOffers()async {
    try {
      var results = await homeRemoteDataSource!.getOffers();
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
