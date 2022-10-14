import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/usecase/usecase.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/repositories/home_repository.dart';

class GetAddressUseCase extends UseCases<List<Address>, NoParams> {
  final HomeRepository? homeRepository;

  GetAddressUseCase({this.homeRepository});

  @override
  Future<Either<Failure, List<Address>>> call(NoParams params) {
    return homeRepository!.getAddress();
  }
}


class GetCategoriesUseCase extends UseCases<List<Categories>, NoParams> {
  final HomeRepository? homeRepository;

  GetCategoriesUseCase({this.homeRepository});

  @override
  Future<Either<Failure, List<Categories>>> call(NoParams params) {
    return homeRepository!.getCategories();
  }
}

class GetOffersUseCase extends UseCases<List<Offers>, NoParams> {
  final HomeRepository? homeRepository;

  GetOffersUseCase({this.homeRepository});

  @override
  Future<Either<Failure, List<Offers>>> call(NoParams params) {
    return homeRepository!.getOffers();
  }
}

class GetDealsUseCase extends UseCases<List<Deals>, NoParams> {
  final HomeRepository? homeRepository;

  GetDealsUseCase({this.homeRepository});

  @override
  Future<Either<Failure, List<Deals>>> call(NoParams params) {
    return homeRepository!.getDeals();
  }
}