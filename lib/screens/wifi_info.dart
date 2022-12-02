import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_speed/provider/wifi_provider.dart';
import 'package:internet_speed/widgets/custom_app_bar.dart';
import 'package:internet_speed/widgets/custom_text_widget.dart';
import 'package:internet_speed/widgets/phone_File_Widget.dart';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:provider/provider.dart';
import '../provider/phone_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WifiInfoScreen extends StatefulWidget {
  const WifiInfoScreen({super.key});

  @override
  State<WifiInfoScreen> createState() => _WifiInfoScreenState();
}

class _WifiInfoScreenState extends State<WifiInfoScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<WifiProvider>(context, listen: false).initNetworkInfo();
  }

  @override
  Widget build(BuildContext context) {
    WifiProvider wifiProvider =
        Provider.of<WifiProvider>(context, listen: true);
    return Scaffold(
      appBar: CustomeAppBar(titleTxt: 'Wifi Info'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.h),
            PhoneFileWidget(
                valueof: wifiProvider.wifiName.toString(),
                initialVal: 'Wifi Name'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiBSSID.toString(),
                initialVal: 'WifiBSSID'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiIPv4.toString(),
                initialVal: 'WifiIPv4'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiIPv6.toString(),
                initialVal: 'WifiIPv6'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiGatewayIP.toString(),
                initialVal: 'Wifi Gateway IP'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiBroadcast.toString(),
                initialVal: 'wifiBroadcast'),
            PhoneFileWidget(
                valueof: wifiProvider.wifiSubmask.toString(),
                initialVal: 'wifiBroadcast'),
          ],
        ),
      ),
    );
  }
}
