import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/domain/entities/cart_entity.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/presentation/view_models/cart_view_model.dart';

class SingleCartWidget extends GetView<CartViewModel> {
  final Cart? cart;
  final int? index;

  const SingleCartWidget({super.key, this.cart, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(3),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 66,
          height: 66,
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(cart!.color),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart!.product!,
                style: GoogleFonts.poppins(
                    color: AppColor.searchIconsColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                cart!.description!,
                style:
                    GoogleFonts.poppins(color: AppColor.fontGrey, fontSize: 10),
              ),
              Text(
                '\$${cart!.totalPrice!}',
                style: GoogleFonts.poppins(
                    color: AppColor.myThemeColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.decrement(cart!, index!);
              },
              child: Material(
                  child: Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.incrementBtnColor),
                child: Center(
                  child: Text(
                    '-',
                    style:
                        TextStyle(color: AppColor.incrementSign, fontSize: 22),
                  ),
                ),
              )),
            ),
            const SizedBox(
              width: 15,
            ),
            Center(
              child: Text(
                cart!.count!.toString(),
                style: GoogleFonts.poppins(
                    color: AppColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                controller.increment(cart!, index!);
              },
              child: Material(
                  child: Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.incrementBtnColor),
                child: Center(
                  child: Text(
                    '+',
                    style:
                        TextStyle(color: AppColor.incrementSign, fontSize: 22),
                  ),
                ),
              )),
            )
          ],
        ))
      ]),
    );
  }
}
