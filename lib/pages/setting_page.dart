import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_speed/screens/phone_info.dart';
import 'package:internet_speed/screens/wifi_info.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:share_plus/share_plus.dart';
import '../ads_services/ads_services.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // bottomNavigationBar: AdsServices.displayBannerAd(),
      appBar: CustomeAppBar(
        appAlignment: true,
        titleTxt: 'Settings',
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                Icons.phone,
                color: AppColors.textWhiteColor,
              ),
              title: text(
                text: 'Phone',
                size: 20.sp,
                color: AppColors.textWhiteColor,
                fontFamily: 'Josefine Sans',
                boldText: FontWeight.w500,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PhoneInfoScreen();
                  },
                ));
              },
            ),
            Container(height: 0.5, color: AppColors.textGreyColor),
            ListTile(
              leading: Icon(
                Icons.wifi,
                color: AppColors.textWhiteColor,
              ),
              title: text(
                text: 'Wifi',
                size: 20.sp,
                color: AppColors.textWhiteColor,
                fontFamily: 'Josefine Sans',
                boldText: FontWeight.w500,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WifiInfoScreen();
                }));
              },
            ),
            Container(height: 0.5, color: AppColors.textGreyColor),
            // ListTile(
            //   leading: Icon(
            //     Icons.privacy_tip_outlined,
            //     color: AppColors.textWhiteColor,
            //   ),
            //   title: text(
            //     text: 'privacy',
            //     size: 20.sp,
            //     color: AppColors.textWhiteColor,
            //     fontFamily: 'Josefine Sans',
            //     boldText: FontWeight.w500,
            //   ),
            //   onTap: () {},
            // ),
            // Container(height: 0.5, color: AppColors.textGreyColor),
            ListTile(
              leading: Icon(
                Icons.share,
                color: AppColors.textWhiteColor,
              ),
              title: text(
                text: 'Share',
                size: 20.sp,
                color: AppColors.textWhiteColor,
                fontFamily: 'Josefine Sans',
                boldText: FontWeight.w500,
              ),
              onTap: (() {
                // Navigator.of(context).pop();
                Share.share(
                    'check out my Application com.net.speed.wifitest.speedtest.wifispeed.internet');
              }),
            ),
            Container(height: 0.5, color: AppColors.textGreyColor),
            ListTile(
              leading: Icon(
                Icons.info,
                color: AppColors.textWhiteColor,
              ),
              title: text(
                text: 'About Us',
                size: 20.sp,
                color: AppColors.textWhiteColor,
                fontFamily: 'Josefine Sans',
                boldText: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Align(
                alignment: Alignment.center,
                child: text(
                  text: 'Version: 1.0.3',
                  size: 24.sp,
                  fontFamily: 'Josefin Sans',
                  color: AppColors.textWhiteColor,
                  boldText: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
