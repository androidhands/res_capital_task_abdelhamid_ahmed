import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_constants/app_constants.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/address_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/location_top_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/search_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/single_category_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/single_deals_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/custom_widgets/single_offer_widget.dart';
import 'package:res_capital_task_abdelhamid_ahmed/features/home_screen/presentation/view_models/home_view_model.dart';

class HomeScreen extends GetWidget<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
          child: Column(
        children: [
          controller.isLoodinAddresses.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : LocationTopWidget(
                  address: controller.currentAddress,
                ),
          const SearchWidget(),
          SizedBox(
            height: 70,
            child: controller.isLoodinAddresses.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    scrollDirection: Axis.horizontal,
                    children: controller.addressesList
                        .map((e) => GestureDetector(
                              onTap: () {
                                controller.setCurrentAddress(e);
                              },
                              child: AddressWidget(
                                address: e,
                              ),
                            ))
                        .toList(),
                  ),
          ),
          SizedBox(
            height: 120,
            child: controller.isLoodingCategories.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          AppConstants.categoryTxt,
                          style: GoogleFonts.poppins(
                              color: AppColor.fontGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: controller.categoriesList
                              .map((e) => SingleCategoryWidget(
                                    categories: e,
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
          ),
          SizedBox(
            height: 180,
            child: controller.isLoodinDeals.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          AppConstants.dealsTxt,
                          style: GoogleFonts.poppins(
                              color: AppColor.fontGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: controller.dealsList.value!
                              .map((e) => SingleDealsWidget(
                                    deals: e,
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
          ),
          SizedBox(
            height: 220,
            child: controller.isLoodinOffers.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : StreamBuilder<Object>(
                    stream: null,
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 215,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: controller.offersList
                                  .map((e) => SingleOfferWidget(
                                        offers: e,
                                      ))
                                  .toList(),
                            ),
                          ),
                        ],
                      );
                    }),
          )
        ],
      )),
    );
  }
}
/**/