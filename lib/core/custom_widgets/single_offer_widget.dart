import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_constants/app_constants.dart';

class SingleOfferWidget extends StatelessWidget {
  const SingleOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      margin: const EdgeInsets.only(left: 14, right: 14),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColor.offerWidget,
          border: Border.all(width: 0.2, color: AppColor.fontGrey)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.offerWidget,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mega',
                      style: GoogleFonts.poppins(
                          color: AppColor.whopperRed, fontSize: 11),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "WHOPP",
                              style: GoogleFonts.poppins(
                                  color: AppColor.whopperBlack,
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "E",
                              style: GoogleFonts.poppins(
                                  color: AppColor.whopperRed,
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "R",
                              style: GoogleFonts.poppins(
                                  color: AppColor.whopperBlack,
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold)),
                        ],
                        style: GoogleFonts.poppins(
                            color: AppColor.fontGrey, fontSize: 10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '\$12',
                          style: GoogleFonts.poppins(
                              color: AppColor.myThemeColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "\$13",
                            style: GoogleFonts.poppins(
                              color: AppColor.white,
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      AppConstants.offerTxt,
                      style: GoogleFonts.poppins(
                          color: AppColor.white, fontSize: 10),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
