import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/categories_entity.dart';

class SingleCategoryWidget extends StatelessWidget {
  final Categories? categories;

  const SingleCategoryWidget({super.key, this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(3),
      child: Column(children: [
        Container(
          width: 44,
          height: 44,
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(categories!.color),
          ),
        ),
        Text(
          categories!.category!,
          style: GoogleFonts.poppins(color: AppColor.fontGrey, fontSize: 11),
        ),
      ]),
    );
  }
}
