import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/presentation/pages/cart_page.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/cart_screen/presentation/view_models/cart_view_model.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/pages/home_screen.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/screens_view_model.dart';

class HomePage extends GetWidget<ScreensViewModel> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          floatingActionButton: GetBuilder<CartViewModel>(
              init: Get.find<CartViewModel>(),
              builder: (cController) {
                return FloatingActionButton(
                  onPressed: null,
                  backgroundColor: AppColor.myThemeColor,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/cart_floating.png',
                        height: 40,
                        width: 40,
                      ),
                      Positioned(
                        top: 4,
                        left: 5,
                        child: Text(
                          '\$${cController.totalCartPrice.value.toStringAsFixed(1)}',
                          style: GoogleFonts.poppins(
                              color: AppColor.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              }),
          bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: const ImageIcon(AssetImage('assets/grocery.png')),
                        onPressed: () {
                          controller.changeCurrentScreen(HomeScreen());
                        }),
                    IconButton(
                        icon: const ImageIcon(
                            AssetImage('assets/notification.png')),
                        onPressed: () {}),
                    const SizedBox(width: 40), // The dummy child
                    IconButton(
                        icon:
                            const ImageIcon(AssetImage('assets/favourits.png')),
                        onPressed: () {}),
                    IconButton(
                        icon: const ImageIcon(AssetImage('assets/cart.png')),
                        onPressed: () {
                          controller.changeCurrentScreen(CartPage());
                        }),
                  ],
                ),
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: SafeArea(child: controller.currentScreen),
        ));
  }
}
