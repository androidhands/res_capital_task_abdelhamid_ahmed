import 'package:get/get.dart';
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

    //usecases
    Get.lazyPut<GetAddressUseCase>(
        () => GetAddressUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetCategoriesUseCase>(
        () => GetCategoriesUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetDealsUseCase>(
        () => GetDealsUseCase(homeRepository: Get.find<HomeRepository>()));
    Get.lazyPut<GetOffersUseCase>(
        () => GetOffersUseCase(homeRepository: Get.find<HomeRepository>()));

    //repsotiries
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(
        homeRemoteDataSource: Get.find<HomeRemoteDataSource>()));

    //datasourse
    Get.lazyPut<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl());
  }
}
