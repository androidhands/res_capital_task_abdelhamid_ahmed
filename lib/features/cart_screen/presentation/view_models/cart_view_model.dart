import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_constants/app_constants.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/usecase/usecase.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/usecases/cart_use_cases.dart';

class CartViewModel extends GetxController {
  final GetCartUseCase? getCartUseCase;

  CartViewModel({this.getCartUseCase});

  var isLoodingCart = false.obs;
  final Rxn<List<Cart>> _cartList = Rxn<List<Cart>>();
  List<Cart> get cartList => _cartList.value!;

  getCartList() async {
    isLoodingCart.value = true;
    var result = await getCartUseCase!(NoParams());
    result.fold((l) {
      isLoodingCart.value = false;
      Get.defaultDialog(
          title: 'Error',
          content: Center(child: Text(AppConstants.mapFailureToMessage(l))),
          confirm: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Ok')));
    }, (r) {
      isLoodingCart.value = false;
      _cartList.value = null;
      _cartList.value = r;
    });
  }

  @override
  void onInit() {
    super.onInit();
    getCartList();
  }

  void decrement(Cart c, int index) {
    int count = c.count;
    count--;
    double price = c.price * count;
    _cartList.value![index].setPrice(price);
    update();
  }

  void increment(Cart c, int index) {
    int count = c.count;
    count++;
    double price = c.price * count;
    _cartList.value![index].setPrice(price);
    update();
  }
}
