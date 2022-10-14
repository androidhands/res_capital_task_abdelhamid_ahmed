import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/location_top_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/single_cart_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/models/cart_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/presentation/view_models/cart_view_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/home_view_model.dart';

class CartPage extends GetWidget<CartViewModel> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
 /*    List<CartModel> list = [];
    list.add(CartModel(
        product: 'product',
        description: 'description',
        count: 0,
        totalPrice: 0,
        color: 4294557101,
        price: 12.3));
    list.add(CartModel(
        product: 'product',
        description: 'description',
        count: 0,
        totalPrice: 0,
        color: 4294557101,
        price: 12.3));
    list.add(CartModel(
        product: 'product',
        description: 'description',
        count: 0,
        totalPrice: 0,
        color: 4294557101,
        price: 12.3));
    list.add(CartModel(
        product: 'product',
        description: 'description',
        count: 0,
        totalPrice: 0,
        color: 4294557101,
        price: 12.3));
    debugPrint(jsonEncode(list)); */

    return SingleChildScrollView(
        child: Column(
      children: [
        GetBuilder<HomeViewModel>(
            init: Get.find<HomeViewModel>(),
            builder: (hController) {
              return hController.isLoodinAddresses.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : LocationTopWidget(
                      address: hController.currentAddress,
                    );
            }),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Cart',
          style: GoogleFonts.poppins(
              color: AppColor.fontGrey,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: controller.cartList.length,
            itemBuilder: ((context, index) {
              return SingleCartWidget(
                cart: controller.cartList[index],
              );
            }))
      ],
    ));
  }
}
