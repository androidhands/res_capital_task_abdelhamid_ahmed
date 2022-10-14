import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';

class SingleDealsWidget extends StatelessWidget {
  const SingleDealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(left: 14, right: 14),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColor.white,
          border: Border.all(width: 0.2, color: AppColor.fontGrey)),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.addressSqureColor,
                ),
              ),
              Positioned(
                  bottom: 70,
                  right: 70,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75),
                        color: AppColor.white),
                    child: Image.asset(
                      'assets/heart_transparent.png',
                      height: 30,
                      width: 30,
                    ),
                  ))
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      color: AppColor.fontGrey, fontSize: 10),
                ),
                Text(
                  'data',
                  style: GoogleFonts.poppins(
                      color: AppColor.fontGrey, fontSize: 10),
                ),
                Row(
                  children: [
                    Text(
                      '12',
                      style: GoogleFonts.poppins(
                          color: AppColor.myThemeColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "data",
                        style: GoogleFonts.poppins(
                            color: Color(0xff464646), fontSize: 13),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
