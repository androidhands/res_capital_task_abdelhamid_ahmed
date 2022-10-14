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
  final Rxn<List<Cart>> cartList = Rxn<List<Cart>>();

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
      cartList.value = null;
      cartList.value = r;
    });
  }

  Rxn<Cart> selectedCart = Rxn<Cart>();

  increment(Cart c, int index) {
    selectedCart.value = null;
    selectedCart.value = c;
    selectedCart.value!.count++;
    selectedCart.value!.totalPrice =
        selectedCart.value!.price * selectedCart.value!.count;
    cartList.value![index] = selectedCart.value!;
    callculateTotalCartPrice();
    update();
  }

  decrement(Cart c, int index) {
    selectedCart.value = null;
    selectedCart.value = c;
    if (selectedCart.value!.count > 0) {
      selectedCart.value!.count--;
      selectedCart.value!.totalPrice =
          selectedCart.value!.price * selectedCart.value!.count;
      cartList.value![index] = selectedCart.value!;

      update();
    }
    callculateTotalCartPrice();
  }

  var totalCartPrice = 0.0.obs;

  callculateTotalCartPrice() {
    double price = 0.0;
    for (Cart c in cartList.value!) {
      price = price + c.totalPrice!;
    }
    totalCartPrice.value = price;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getCartList();
  }
}
