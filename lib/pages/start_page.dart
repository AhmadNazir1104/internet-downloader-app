import 'dart:async';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internet_speed/ads_services/ads_services.dart';
import 'package:internet_speed/provider/home_provider.dart';
import 'package:internet_speed/provider/internet_connection_provider.dart';
import 'package:alxgration_speedometer/speedometer.dart';
import 'package:internet_speed/utility/app_colors.dart';
import 'package:internet_speed/utility/app_strings.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:provider/provider.dart';
import 'package:applovin_max/applovin_max.dart';
import 'dart:math' as m;
import 'package:flutter_internet_speed_test/flutter_internet_speed_test.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      // bottomNavigationBar: AdsServices.displayBannerAd(),
      body: internetConnectionProvider.internetConnection
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        homepro.testDownloadType
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    text(
                                      text: 'Download',
                                      size: 12.sp,
                                      color: AppColors.textBlackColor,
                                      fontFamily: 'popinsbold',
                                    ),
                                    new LinearPercentIndicator(
                                      width: 320.w,
                                      lineHeight: 20.h,
                                      percent:
                                          (homeProvider.downloadComplteRate! /
                                              100),
                                      backgroundColor: Colors.grey,
                                      progressColor: AppColors.secondaryColor,
                                      center: Text(
                                          '${(homeProvider.downloadComplteRate! / 100) * 100} MB'),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 20.h,
                        ),
                        homepro.testUploadType
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    text(
                                      text: 'Upload',
                                      size: 12.sp,
                                      color: AppColors.textBlackColor,
                                      fontFamily: 'popinsbold',
                                    ),
                                    new LinearPercentIndicator(
                                      width: 320.w,
                                      lineHeight: 20.h,
                                      percent:
                                          (homeProvider.uploadCompleteRate! /
                                              100),
                                      backgroundColor: Colors.grey,
                                      progressColor: AppColors.primaryColor,
                                      center: Text(
                                          '${(homeProvider.uploadCompleteRate! / 100) * 100} MB'),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 20.h,
                        ),
                        homepro.homeState == 0
                            ? InkWell(
                                onTap: () {
                                  homeProvider.checkInterSpeed();
                                },
                                child: Center(
                                  child: Container(
                                      height: 200.h,
                                      width: 200.w,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                appColors().primaryColor,
                                                appColors().secondaryColor
                                              ]),
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Center(
                                                child: FaIcon(
                                              FontAwesomeIcons.powerOff,
                                              size: 100,
                                              color: Colors.white,
                                            )),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "START",
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  gradient: AppColors.Lineargradiebnt,
                                ),
                                child: SfRadialGauge(axes: <RadialAxis>[
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
                                          thicknessUnit: GaugeSizeUnit.factor,
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
                                            sizeUnit: GaugeSizeUnit.factor,
                                            startWidth: 0.03,
                                            endWidth: 0.03,
                                            gradient: SweepGradient(
                                                colors: const <Color>[
                                                  Colors.green,
                                                  Colors.yellow,
                                                  Colors.red
                                                ],
                                                stops: const <double>[
                                                  0.0,
                                                  0.5,
                                                  1
                                                ]))
                                      ],
                                      pointers: <GaugePointer>[
                                        NeedlePointer(
                                            value: homeProvider.transferRate,
                                            //  _value,
                                            needleLength: 0.95,
                                            enableAnimation: true,
                                            animationType: AnimationType.ease,
                                            needleStartWidth: 1.5,
                                            needleEndWidth: 6,
                                            needleColor: Colors.red,
                                            knobStyle: KnobStyle(
                                                knobRadius: 0.09,
                                                sizeUnit: GaugeSizeUnit.factor))
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
                                                      homeProvider.transferRate
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      )),
                                                  SizedBox(height: 20),
                                                  Text('MB',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ))
                                                ])),
                                            angle: 90,
                                            positionFactor: 0.75)
                                      ])
                                ]),
                              ),
                        homepro.homeState == 3
                            ? ElevatedButton(
                                onPressed: () {
                                  homeProvider.cleanData();
                                },
                                child: text(
                                  text: 'Continue',
                                  size: 18.sp,
                                  color: AppColors.textBlackColor,
                                ),
                              )
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
    );
  }

  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

  // Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     ElevatedButton(
  //       onPressed: () async {
  //         AdsServices.displayInterstitialAds();
  //       },
  //       child: Text('Display Interstitial Ads'),
  //     ),
  //   ],
  // ),

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
