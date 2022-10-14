import 'package:res_capital_task_abdelhamid_ahmed/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/usecase/usecase.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/repositories/cart_repository.dart';

class GetCartUseCase extends UseCases<List<Cart>, NoParams> {
  final CartRepository? cartRepository;

  GetCartUseCase({this.cartRepository});

  @override
  Future<Either<Failure, List<Cart>>> call(NoParams params) {
    return cartRepository!.getCart();
  }
}
