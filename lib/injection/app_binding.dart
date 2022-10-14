import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/screens_view_model.dart';

class MyAppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreensViewModel>(() => ScreensViewModel());
  }
}
