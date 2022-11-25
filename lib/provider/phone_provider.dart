import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:internet_speed/models/phone_model.dart';

class PhoneProvider extends ChangeNotifier {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  var phoneDatamodel = PhoneDatamodel();

  readAndroidBuildData() async {
    var dataInfo = await deviceInfoPlugin.androidInfo;

    phoneDatamodel.board = dataInfo.board;
    phoneDatamodel.sdkInt = dataInfo.version.sdkInt.toString();
    phoneDatamodel.release = dataInfo.version.release;
    phoneDatamodel.previewSdkInt = dataInfo.version.previewSdkInt.toString();
    phoneDatamodel.incremental = dataInfo.version.incremental;
    phoneDatamodel.codename = dataInfo.version.codename;
    phoneDatamodel.baseOS = dataInfo.version.baseOS;
    phoneDatamodel.bootloader = dataInfo.bootloader;
    phoneDatamodel.brand = dataInfo.brand;
    phoneDatamodel.device = dataInfo.device;
    phoneDatamodel.display = dataInfo.display;
    phoneDatamodel.fingerprint = dataInfo.fingerprint;
    phoneDatamodel.hardware = dataInfo.hardware;
    phoneDatamodel.host = dataInfo.host;
    phoneDatamodel.id = dataInfo.id;
    phoneDatamodel.manufactures = dataInfo.manufacturer;
    phoneDatamodel.model = dataInfo.model;
    phoneDatamodel.product = dataInfo.product;
    phoneDatamodel.supported32BitAbis = dataInfo.supported32BitAbis.toString();
    phoneDatamodel.supported64BitAbis = dataInfo.supported64BitAbis.toString();
    phoneDatamodel.supportedAbis = dataInfo.supportedAbis.toString();
    phoneDatamodel.tags = dataInfo.tags;
    phoneDatamodel.types = dataInfo.type;
    phoneDatamodel.isPhysicalDevice = dataInfo.isPhysicalDevice.toString();
    phoneDatamodel.systemFeature = dataInfo.systemFeatures.toString();
    phoneDatamodel.displaySizeInches =
        dataInfo.displayMetrics.sizeInches.toString();
    phoneDatamodel.displayWidthPixels =
        dataInfo.displayMetrics.widthPx.toString();
    phoneDatamodel.displayWidthInches =
        dataInfo.displayMetrics.widthInches.toString();
    phoneDatamodel.displayHeightInches =
        dataInfo.displayMetrics.heightInches.toString();
    phoneDatamodel.displayHeightPixels =
        dataInfo.displayMetrics.heightPx.toString();
    phoneDatamodel.displayXDpi = dataInfo.displayMetrics.xDpi.toString();
    phoneDatamodel.displayYDpi = dataInfo.displayMetrics.yDpi.toString();

    //  <String, dynamic>{
    //   'version.securityPatch': build.version.securityPatch,
    //   'version.sdkInt': build.version.sdkInt,
    //   'version.release': build.version.release,
    //   'version.previewSdkInt': build.version.previewSdkInt,
    //   'version.incremental': build.version.incremental,
    //   'version.codename': build.version.codename,
    //   'version.baseOS': build.version.baseOS,
    //   'board': build.board,
    //   'bootloader': build.bootloader,
    //   'brand': build.brand,
    //   'device': build.device,
    //   'display': build.display,
    //   'fingerprint': build.fingerprint,
    //   'hardware': build.hardware,
    //   'host': build.host,
    //   'id': build.id,
    //   'manufacturer': build.manufacturer,
    //   'model': build.model,
    //   'product': build.product,
    //   'supported32BitAbis': build.supported32BitAbis,
    //   'supported64BitAbis': build.supported64BitAbis,
    //   'supportedAbis': build.supportedAbis,
    //   'tags': build.tags,
    //   'type': build.type,
    //   'isPhysicalDevice': build.isPhysicalDevice,
    //   'systemFeatures': build.systemFeatures,
    //   'displaySizeInches':
    //       ((build.displayMetrics.sizeInches * 10).roundToDouble() / 10),
    //   'displayWidthPixels': build.displayMetrics.widthPx,
    //   'displayWidthInches': build.displayMetrics.widthInches,
    //   'displayHeightPixels': build.displayMetrics.heightPx,
    //   'displayHeightInches': build.displayMetrics.heightInches,
    //   'displayXDpi': build.displayMetrics.xDpi,
    //   'displayYDpi': build.displayMetrics.yDpi,
    // };

    notifyListeners();
  }
}
