import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/usecases/home_use_ases.dart';

class HomeViewModel extends GetxController {
  final GetAddressUseCase? getAddressUseCase;
  final GetCategoriesUseCase? getCategoriesUseCase;
  final GetOffersUseCase? getOffersUseCase;
  final GetDealsUseCase? getDealsUseCase;

  HomeViewModel({this.getAddressUseCase, this.getCategoriesUseCase, this.getOffersUseCase, this.getDealsUseCase});
  
}
