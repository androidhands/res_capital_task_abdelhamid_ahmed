import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/domain/entities/addresses_entity.dart';

class LocationTopWidget extends StatelessWidget {
  final Address? address;

  const LocationTopWidget({super.key, this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: Container(
            height: 55,
            width: 170,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/top_location.png'),
                  fit: BoxFit.cover),
            ),
            child: Row(children: [
              Image.asset(
                'assets/location.png',
                height: 40,
                width: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  address!.address!,
                  style: GoogleFonts.poppins(
                    color: AppColor.white,
                    fontSize: 10,
                  ),
                ),
              )
            ]),
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
