import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';

abstract class UseCases<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
