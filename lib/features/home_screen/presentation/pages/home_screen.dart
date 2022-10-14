import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/home_view_model.dart';

class HomeScreen extends GetWidget<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
       Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            
    
          ],
        )),
      ),
    );
  }
}
