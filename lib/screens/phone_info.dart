import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:internet_speed/widgets/phone_File_Widget.dart';
import 'package:provider/provider.dart';
import 'package:internet_speed/provider/phone_provider.dart';
import 'package:internet_speed/widgets/custom_app_bar.dart';

import '../ads_services/ads_services.dart';
import '../utility/app_Images.dart';

class PhoneInfoScreen extends StatefulWidget {
  const PhoneInfoScreen({super.key});

  @override
  State<PhoneInfoScreen> createState() => _PhoneInfoScreenState();
}

class _PhoneInfoScreenState extends State<PhoneInfoScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<PhoneProvider>(context, listen: false).readAndroidBuildData();
  }

  @override
  Widget build(BuildContext context) {
    PhoneProvider phoneProvider =
        Provider.of<PhoneProvider>(context, listen: true);
    // phoneProvider.readAndroidBuildData();
    return Scaffold(
      bottomNavigationBar: AdsServices.displayBannerAd(),
      appBar: CustomeAppBar(
        appAlignment: true,
        titleTxt: 'Phone Info',
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.backgroundImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 15.w),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70.h),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Board of Device',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Manufactures',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Device Model',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Display',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'ID',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Hardware',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Host',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Supported32BitAbis',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Supported64BitAbis',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'SystemFeature',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Display Size in Inches',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Dispaly Width In Inches',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Is Physical Device',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Display Xdpi',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: 'Display Ydpi',
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),

                      // PhoneFileWidget(
                      //   valueof: phoneProvider.board.toString(),
                      //   initialVal: 'Board of Device',
                      // ),
                      // PhoneFileWidget(
                      //   valueof: phoneProvider.manufactures.toString(),
                      //   initialVal: 'Manufactures',
                      // ),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.model.toString(),
                      //     initialVal: 'Device Model'),
                      // PhoneFileWidget(
                      //   valueof: phoneProvider.display.toString(),
                      //   initialVal: 'Display',
                      // ),
                      // PhoneFileWidget(
                      //   valueof: phoneProvider.id.toString(),
                      //   initialVal: "ID",
                      // ),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.hardware.toString(),
                      //     initialVal: "Hardware"),
                      // PhoneFileWidget(
                      //   valueof: phoneProvider.host.toString(),
                      //   initialVal: "Host",
                      // ),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.supported32BitAbis.toString(),
                      //     initialVal: 'Supported32BitAbis'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.supported64BitAbis.toString(),
                      //     initialVal: 'Supported64BitAbis'),
                      // PhoneFileWidget(
                      //     valueof:
                      //         phoneProvider.systemFeature.toString().length > 10
                      //             ? phoneProvider.systemFeature
                      //                     .toString()
                      //                     .substring(0, 30) +
                      //                 ' ......'
                      //             : phoneProvider.systemFeature.toString(),
                      //     initialVal: 'SystemFeature'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.displaySizeInches.toString(),
                      //     initialVal: 'Display Size in Inches'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.displayWidthInches.toString(),
                      //     initialVal: 'Dispaly Width In Inches'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.isPhysicalDevice.toString(),
                      //     initialVal: 'Is Physical Device'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.displayXDpi.toString(),
                      //     initialVal: 'Display Xdpi'),
                      // PhoneFileWidget(
                      //     valueof: phoneProvider.displayYDpi.toString(),
                      //     initialVal: 'Display Ydpi')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.board.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.manufactures.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.model.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.display!.length > 12
                              ? phoneProvider.display
                                  .toString()
                                  .substring(0, 12)
                              : phoneProvider.display.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.id!.length > 12
                              ? phoneProvider.id.toString().substring(0, 12)
                              : phoneProvider.id.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.hardware.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.supported32BitAbis!.length > 12
                              ? phoneProvider.supported32BitAbis
                                  .toString()
                                  .substring(0, 12)
                              : phoneProvider.supported32BitAbis.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.host.toString().length > 12
                              ? phoneProvider.host.toString().substring(0, 12)
                              : phoneProvider.host.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.supported64BitAbis
                                      .toString()
                                      .length >
                                  12
                              ? phoneProvider.supported64BitAbis!
                                  .substring(0, 12)
                              : phoneProvider.supported64BitAbis.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.systemFeature!.length > 12
                              ? phoneProvider.systemFeature
                                  .toString()
                                  .substring(0, 12)
                              : phoneProvider.systemFeature.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.displaySizeInches.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.displayWidthInches.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text(
                          text: phoneProvider.isPhysicalDevice.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.displayXDpi.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: text(
                          text: phoneProvider.displayYDpi.toString(),
                          size: 15,
                          fontFamily: 'Josefine Sans',
                          color: AppColors.textWhiteColor,
                          boldText: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
