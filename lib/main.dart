import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/pages/home_page.dart';
import 'package:res_capital_task_abdelhamid_ahmed/injection/app_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RES Task',
      initialBinding: MyAppBindings(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
