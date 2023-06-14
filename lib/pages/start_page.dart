import 'package:flutter/material.dart';
import 'package:internet_speed/ads_services/ads_services.dart';
import 'package:internet_speed/provider/home_provider.dart';
import 'package:internet_speed/provider/internet_connection_provider.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/widgets/custom_app_bar.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:provider/provider.dart';
import 'package:ripple_wave/ripple_wave.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utility/app_Images.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    InternetConnectionProvider internetConnectionProvider =
        Provider.of<InternetConnectionProvider>(context, listen: true);
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.transparent,
      // bottomNavigationBar: AdsServices.displayBannerAd(),
      appBar: CustomeAppBar(titleTxt: 'SpeedTest', appAlignment: true),
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
        child: internetConnectionProvider.internetConnection
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Consumer<HomeProvider>(
                    builder: (context, homepro, child) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          homepro.homeState == 0
                              ? InkWell(
                                  onTap: () {
                                    homeProvider.checkInterSpeed();
                                  },
                                  child: Center(
                                    child: RippleWave(
                                      color: AppColors.textGreyColor,
                                      duration: Duration(seconds: 3),
                                      childTween: Tween(begin: 1, end: 1),
                                      repeat: true,
                                      child: Container(
                                        height: 240.h,
                                        width: 240.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border: Border.all(
                                            width: 5.r,
                                            color: AppColors.textWhiteColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                          ),
                                          child: Text(
                                            "START",
                                            style: TextStyle(
                                              fontSize: 36,
                                              color: AppColors.textWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Josefine Sans',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      child: SfRadialGauge(
                                        axes: <RadialAxis>[
                                          RadialAxis(
                                            startAngle: 270,
                                            endAngle: 270,
                                            minimum: 0,
                                            maximum: 80,
                                            interval: 10,
                                            radiusFactor: 0.4,
                                            showAxisLine: false,
                                            showLastLabel: false,
                                            minorTicksPerInterval: 4,
                                            majorTickStyle: MajorTickStyle(
                                                length: 8,
                                                thickness: 3,
                                                color: Colors.white),
                                            minorTickStyle: MinorTickStyle(
                                                length: 3,
                                                thickness: 1.5,
                                                color: Colors.grey),
                                            axisLabelStyle: GaugeTextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                            onLabelCreated: labelCreated,
                                          ),
                                          RadialAxis(
                                              minimum: 0,
                                              maximum: 20,
                                              labelOffset: 30,
                                              axisLineStyle: AxisLineStyle(
                                                  thicknessUnit:
                                                      GaugeSizeUnit.factor,
                                                  thickness: 0.03),
                                              majorTickStyle: MajorTickStyle(
                                                  length: 6,
                                                  thickness: 4,
                                                  color: Colors.white),
                                              minorTickStyle: MinorTickStyle(
                                                  length: 3,
                                                  thickness: 3,
                                                  color: Colors.white),
                                              axisLabelStyle: GaugeTextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                              ranges: <GaugeRange>[
                                                GaugeRange(
                                                    startValue: 0,
                                                    endValue: 200,
                                                    sizeUnit:
                                                        GaugeSizeUnit.factor,
                                                    startWidth: 0.03,
                                                    endWidth: 0.03,
                                                    gradient: SweepGradient(
                                                        colors: const <Color>[
                                                          Color(0xff54C0EB),
                                                          Color(0xffF8B64C),
                                                          Color(0xffF1543F),
                                                        ],
                                                        stops: const <double>[
                                                          0.0,
                                                          0.5,
                                                          1
                                                        ]))
                                              ],
                                              pointers: <GaugePointer>[
                                                NeedlePointer(
                                                    value: homeProvider
                                                        .transferRate,
                                                    //  _value,
                                                    needleLength: 0.95,
                                                    enableAnimation: true,
                                                    animationType:
                                                        AnimationType.ease,
                                                    needleStartWidth: 1.5,
                                                    needleEndWidth: 6,
                                                    needleColor: Colors.red,
                                                    knobStyle: KnobStyle(
                                                        knobRadius: 0.09,
                                                        sizeUnit: GaugeSizeUnit
                                                            .factor))
                                              ],
                                              annotations: <GaugeAnnotation>[
                                                GaugeAnnotation(
                                                    widget: Container(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                          Text(
                                                              // _value.toString(),
                                                              homeProvider
                                                                  .transferRate
                                                                  .toString(),
                                                              style: TextStyle(
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                          SizedBox(height: 20),
                                                          Text('MB',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                              ))
                                                        ])),
                                                    angle: 90,
                                                    positionFactor: 0.75)
                                              ])
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // hei÷ght: 110,

                                      margin: EdgeInsets.symmetric(
                                          horizontal: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColors.primaryColor
                                            .withOpacity(0.87),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.textWhiteColor,
                                            blurStyle: BlurStyle.outer,
                                            blurRadius: 12,
                                            spreadRadius: 1,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.h, horizontal: 22.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10.h),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 18.h,
                                                      width: 18.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: AppColors
                                                            .textBlackColor,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            AppImages
                                                                .downloadIcon,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 15.w),
                                                    Column(
                                                      children: [
                                                        text(
                                                          text: 'Download',
                                                          size: 20,
                                                          boldText:
                                                              FontWeight.w600,
                                                          color: AppColors
                                                              .textWhiteColor,
                                                          fontFamily:
                                                              'popinsregular',
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  // mainAxisAlignment:
                                                  //     MainAxisAlignment.end,
                                                  children: [
                                                    text(
                                                      text: homeProvider
                                                              .testDownloadType
                                                          ? '${(homeProvider.downloadComplteRate! / 100) * 100}'
                                                                      .length >
                                                                  12
                                                              ? '${(homeProvider.downloadComplteRate! / 100) * 100}'
                                                                  .substring(
                                                                      0, 5)
                                                              : '${(homeProvider.downloadComplteRate! / 100) * 100}'
                                                          : '0',
                                                      size: 20.sp,
                                                      boldText: FontWeight.w400,
                                                      color: AppColors
                                                          .textWhiteColor,
                                                      fontFamily:
                                                          'popinsregular',
                                                    ),
                                                    SizedBox(width: 15.w),
                                                    text(
                                                        text: 'Mbps',
                                                        size: 12,
                                                        boldText:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .textWhiteColor,
                                                        fontFamily:
                                                            'popinsregular')
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10.h),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 18.h,
                                                      width: 18.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: AppColors
                                                            .textBlackColor,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            AppImages
                                                                .uploadIcon,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 15.w),
                                                    text(
                                                      text: 'Upload',
                                                      size: 20,
                                                      boldText: FontWeight.w600,
                                                      color: AppColors
                                                          .textWhiteColor,
                                                      fontFamily:
                                                          'popinsregular',
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    text(
                                                      text: homeProvider
                                                              .testUploadType
                                                          ? '${(homeProvider.uploadCompleteRate! / 100) * 100}'
                                                                      .length >
                                                                  12
                                                              ? '${(homeProvider.uploadCompleteRate! / 100) * 100}'
                                                                  .substring(
                                                                      1, 12)
                                                              : '${(homeProvider.uploadCompleteRate! / 100) * 100}'
                                                          : '0',
                                                      size: 20.sp,
                                                      boldText: FontWeight.w400,
                                                      color: AppColors
                                                          .textWhiteColor,
                                                      fontFamily:
                                                          'popinsregular',
                                                    ),
                                                    SizedBox(width: 15.w),
                                                    text(
                                                      text: 'Mbps',
                                                      size: 12.sp,
                                                      boldText: FontWeight.w400,
                                                      color: AppColors
                                                          .textWhiteColor,
                                                      fontFamily:
                                                          'popinsregular',
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          homepro.homeState == 3
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 28.0),
                                  child: IconButton(
                                    onPressed: () {
                                      homeProvider.cleanData();
                                    },
                                    icon: Icon(
                                      Icons.restart_alt_rounded,
                                      color: AppColors.textWhiteColor,
                                      size: 60,
                                    ),
                                  ))
                              : SizedBox(),
                        ],
                      );
                    },
                  ),
                  // Center(child: AdsServices.displayNativeMRECAd()),
                ],
              )
            : Center(
                child: Text('Internet Available'),
                //
              ),
      ),
    );
  }

  // AdsServices.displayNativeMRECAd(),
  void labelCreated(AxisLabelCreatedArgs args) {
    if (args.text == '0') {
      args.text = 'N';
      args.labelStyle = GaugeTextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14);
    } else if (args.text == '10')
      args.text = '';
    else if (args.text == '20')
      args.text = 'E';
    else if (args.text == '30')
      args.text = '';
    else if (args.text == '40')
      args.text = 'S';
    else if (args.text == '50')
      args.text = '';
    else if (args.text == '60')
      args.text = 'W';
    else if (args.text == '70') args.text = '';
  }
}
