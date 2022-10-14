import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/data_sources/cart_remote_data_source.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/models/cart_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/repositories/cart_repository_impl.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/repositories/cart_repository.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/usecases/cart_use_cases.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/presentation/view_models/cart_view_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/data_sources/home_remote_data_source.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/data/repositories/home_repository_impl.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/repositories/home_repository.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/usecases/home_use_ases.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/home_view_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/screens_view_model.dart';

class MyAppBindings extends Bindings {
  @override
  void dependencies() {
    //view models
    Get.lazyPut<ScreensViewModel>(() => ScreensViewModel());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel(
        getAddressUseCase: Get.find<GetAddressUseCase>(),
        getCategoriesUseCase: Get.find<GetCategoriesUseCase>(),
        getDealsUseCase: Get.find<GetDealsUseCase>(),
        getOffersUseCase: Get.find<GetOffersUseCase>()));
    Get.lazyPut<CartViewModel>(
        () => CartViewModel(getCartUseCase: Get.find<GetCartUseCase>()));

    //usecases
    Get.lazyPut<GetAddressUseCase>(
        () => GetAddressUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetCategoriesUseCase>(
        () => GetCategoriesUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetDealsUseCase>(
        () => GetDealsUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetOffersUseCase>(
        () => GetOffersUseCase(homeRepository: Get.find<HomeRepository>()));

    Get.lazyPut<GetCartUseCase>(
        () => GetCartUseCase(cartRepository: Get.find<CartRepository>()));

    //repsotiries
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(
        homeRemoteDataSource: Get.find<HomeRemoteDataSource>()));

    Get.lazyPut<CartRepository>(() => CartRepositoryImpl(
        cartRemoteDataSource: Get.find<CartRemoteDataSource>()));

    //datasourse
    Get.lazyPut<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl());
    Get.lazyPut<CartRemoteDataSource>(() => CartRemoteDataSourceImpl());
  }
}
