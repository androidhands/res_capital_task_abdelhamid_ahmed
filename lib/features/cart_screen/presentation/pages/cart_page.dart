import 'package:flutter/material.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/single_cart_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/data/models/cart_model.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleCartWidget(
      cart: CartModel(
          product: 'product',
          description: 'description',
          count: 2,
          totalPrice: 25.3,
          color: 4294557101),
    ));
  }
}
