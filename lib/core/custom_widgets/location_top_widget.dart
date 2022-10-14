import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';

class LocationTopWidget extends StatelessWidget {
  final String? location;

  const LocationTopWidget({super.key, this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: Container(
            child: Container(
              height: 50,
              width: 140,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/top_location.png'))),
              child: Row(children: [
                Image.asset(
                  'assets/location.png',
                  height: 40,
                  width: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    location!,
                    style: GoogleFonts.poppins(
                      color: AppColor.white,
                      fontSize: 11,
                    ),
                  ),
                )
              ]),
            ),
          )),
          Image.asset(
            'assets/circle.png',
            height: 36,
            width: 36,
          ),
        ],
      ),
    );
  }
}
