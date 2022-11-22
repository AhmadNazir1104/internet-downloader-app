import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_speed/provider/all_providers.dart';
import 'package:internet_speed/provider/internet_connection_provider.dart';
import './screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return MultiProvider(
            providers: allProvider,
            child: Consumer<InternetConnectionProvider>(
                builder: (context, state, child) {
              Timer.run(() {
                Provider.of<InternetConnectionProvider>(context, listen: false)
                    .initStateNetCheck(context);
              });
              return MaterialApp(
                color: Colors.red,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),

                debugShowCheckedModeBanner: false,
                home: const SplashScreen(),
              );
            }));
      },

      // builder: (BuildContext context, Widget? child) {
      //   return MaterialApp(
      //     theme: ThemeData(
      //       primarySwatch: Colors.blue,
      //       visualDensity: VisualDensity.adaptivePlatformDensity,
      //     ),
      //     debugShowCheckedModeBanner: false,
      //     home: const SplashScreen(),
      //   );
      // },
    );
  }
}
