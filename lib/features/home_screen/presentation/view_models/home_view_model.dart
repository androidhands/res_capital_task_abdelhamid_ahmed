import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_constants/app_constants.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/usecase/usecase.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/offers_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/usecases/home_use_ases.dart';

class HomeViewModel extends GetxController {
  final GetAddressUseCase? getAddressUseCase;
  final GetCategoriesUseCase? getCategoriesUseCase;
  final GetOffersUseCase? getOffersUseCase;
  final GetDealsUseCase? getDealsUseCase;

  HomeViewModel(
      {this.getAddressUseCase,
      this.getCategoriesUseCase,
      this.getOffersUseCase,
      this.getDealsUseCase});

  final Rxn<Address> _currentAddress = Rxn<Address>();
  get currentAddress => _currentAddress.value;
  final Rxn<List<Address>> _addressesList = Rxn<List<Address>>();
  get addressesList => _addressesList.value;
  final Rxn<List<Categories>> _categoriesList = Rxn<List<Categories>>();
  get categoriesList => _categoriesList.value;
  final Rxn<List<Deals>> _dealsList = Rxn<List<Deals>>();
  get dealsList => _dealsList.value;
  final Rxn<List<Offers>> _offersList = Rxn<List<Offers>>();
  get offersList => _offersList.value;

  var isLoodinAddresses = false.obs;
  var isLoodingCategories = false.obs;
  var isLoodinDeals = false.obs;
  var isLoodinOffers = false.obs;

  getAddressesList() async {
    isLoodinAddresses.value = true;
    var result = await getAddressUseCase!(NoParams());
    result.fold((l) {
      isLoodinAddresses.value = false;
      Get.defaultDialog(
          title: 'Error',
          content: Center(child: Text(AppConstants.mapFailureToMessage(l))),
          confirm: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Ok')));
    }, (r) {
      isLoodinAddresses.value = false;
      _currentAddress.value = null;
      _currentAddress.value = r[0];

      _addressesList.value = null;
      _addressesList.value = r;
      update();
    });
  }

  getCategoriesList() async {
    isLoodingCategories.value = true;
    var result = await getCategoriesUseCase!(NoParams());
    result.fold((l) {
      isLoodingCategories.value = false;
      Get.defaultDialog(
          title: 'Error',
          content: Center(child: Text(AppConstants.mapFailureToMessage(l))),
          confirm: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Ok')));
    }, (r) {
      isLoodingCategories.value = false;

      _categoriesList.value = null;
      _categoriesList.value = r;
      update();
    });
  }

  getDealsList() async {
    isLoodinDeals.value = true;
    var result = await getDealsUseCase!(NoParams());
    result.fold((l) {
      isLoodinDeals.value = false;
      Get.defaultDialog(
          title: 'Error',
          content: Center(child: Text(AppConstants.mapFailureToMessage(l))),
          confirm: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Ok')));
    }, (r) {
      isLoodinDeals.value = false;

      _dealsList.value = null;
      _dealsList.value = r;
      update();
    });
  }

  getOffersList() async {
    isLoodinOffers.value = true;
    var result = await getOffersUseCase!(NoParams());
    result.fold((l) {
      isLoodinOffers.value = false;
      Get.defaultDialog(
          title: 'Error',
          content: Center(child: Text(AppConstants.mapFailureToMessage(l))),
          confirm: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Ok')));
    }, (r) {
      isLoodinOffers.value = false;

      _offersList.value = null;
      _offersList.value = r;
      update();
    });
  }
}
