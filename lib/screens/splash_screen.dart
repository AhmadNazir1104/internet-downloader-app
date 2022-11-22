import 'dart:async';
import 'package:internet_speed/utility/app_Images.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:internet_speed/screens/home_screen.dart';
import 'package:internet_speed/widgets/app_Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        AppRoutes.pushAndRemoveUntil(
          context,
          PageTransitionType.fade,
          HomeScreen(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(
                AppImages.appLogo,
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            Text(
              "Speed Checker",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
