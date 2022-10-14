import 'package:flutter/material.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_constants/app_constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(left: 14, right: 14),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: AppColor.geryWhite),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.searchIconsColor,
          ),
          hintText: AppConstants.searchTxt,
          hintStyle: TextStyle(
            color: AppColor.fontGrey,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
