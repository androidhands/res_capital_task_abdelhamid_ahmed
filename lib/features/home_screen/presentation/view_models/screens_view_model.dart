import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/pages/home_page.dart';

class ScreensViewModel extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  get selectedIndex => _selectedIndex.value;

  final Rxn<Widget> _currentScreen = Rxn<Widget>(HomePage());
  get currentScreen => _currentScreen.value;

  changeCurrentScreen(Widget widget) {
    _currentScreen.value = widget;
  }
}
