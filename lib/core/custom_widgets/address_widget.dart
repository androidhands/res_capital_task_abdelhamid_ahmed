import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 14, right: 14),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColor.white,
          border: Border.all(width: 0.2, color: AppColor.fontGrey)),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.addressSqureColor,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'data',
                  style: GoogleFonts.poppins(
                      color: AppColor.searchIconsColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'data',
                  style: GoogleFonts.poppins(
                      color: AppColor.fontGrey, fontSize: 9),
                ),
                Text(
                  'data',
                  style: GoogleFonts.poppins(
                      color: AppColor.fontGrey, fontSize: 9),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
