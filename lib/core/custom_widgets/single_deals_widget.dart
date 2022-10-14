import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/deals_entity.dart';

class SingleDealsWidget extends StatelessWidget {
  final Deals? deals;

  const SingleDealsWidget({super.key, this.deals});
  

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
                  color:deals!.color!,
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
                     deals!.isFavourite!?'assets/heart_red.png': 'assets/heart_transparent.png',
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
                  deals!.product!,
                  style: GoogleFonts.poppins(
                      color: AppColor.searchIconsColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Prices ${deals!.pricesCount!.toString()}',
                  style: GoogleFonts.poppins(
                      color: AppColor.fontGrey, fontSize: 10),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Image.asset(
                          'assets/location.png',
                          width: 12,
                          height: 12,
                          color: AppColor.fontGrey,
                        ),
                      ),
                       TextSpan(
                        text:deals!.address!,
                      ),
                    ],
                    style: GoogleFonts.poppins(
                        color: AppColor.fontGrey, fontSize: 10),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$${deals!.newPrice!}',
                      style: GoogleFonts.poppins(
                          color: AppColor.myThemeColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$${deals!.oldPrice!}",
                        style: GoogleFonts.poppins(
                          color: Color(0xff464646),
                          fontSize: 13,
                          decoration: TextDecoration.lineThrough,
                        ),
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
