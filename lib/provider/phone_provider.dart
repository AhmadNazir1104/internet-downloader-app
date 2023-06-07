import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class PhoneProvider extends ChangeNotifier {
  // Phone Data Veriables
  String? securityPatch;
  String? sdkInt;
  String? release;
  String? previewSdkInt;
  String? incremental;
  String? codename;
  String? baseOS;
  String? board;
  String? bootloader;
  String? brand;
  String? device;
  String? display;
  String? fingerprint;
  String? hardware;
  String? host;
  String? id;
  String? manufactures;
  String? model;
  String? product;
  String? supported32BitAbis;
  String? supported64BitAbis;
  String? supportedAbis;
  String? tags;
  String? types;
  String? isPhysicalDevice;
  String? systemFeature;
  String? displaySizeInches;
  String? displayWidthPixels;
  String? displayWidthInches;
  String? displayHeightPixels;
  String? displayHeightInches;
  String? displayXDpi;
  String? displayYDpi;

  readAndroidBuildData() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    log('Data Fetching Strat====');
    var dataInfo = await deviceInfoPlugin.androidInfo;

    board = dataInfo.board;
    log('body = $board');
    sdkInt = dataInfo.version.sdkInt.toString();
    release = dataInfo.version.release;
    previewSdkInt = dataInfo.version.previewSdkInt.toString();
    incremental = dataInfo.version.incremental;
    codename = dataInfo.version.codename;
    baseOS = dataInfo.version.baseOS;
    bootloader = dataInfo.bootloader;
    brand = dataInfo.brand;
    device = dataInfo.device;
    display = dataInfo.display;
    fingerprint = dataInfo.fingerprint;
    hardware = dataInfo.hardware;
    host = dataInfo.host;
    id = dataInfo.id;
    manufactures = dataInfo.manufacturer;
    model = dataInfo.model;
    product = dataInfo.product;
    supported32BitAbis = dataInfo.supported32BitAbis.toString();
    supported64BitAbis = dataInfo.supported64BitAbis.toString();
    supportedAbis = dataInfo.supportedAbis.toString();
    tags = dataInfo.tags;
    types = dataInfo.type;
    isPhysicalDevice = dataInfo.isPhysicalDevice.toString();
    systemFeature = dataInfo.systemFeatures.toString();
    displaySizeInches = dataInfo.displayMetrics.sizeInches.toString();
    displayWidthPixels = dataInfo.displayMetrics.widthPx.toString();
    displayWidthInches = dataInfo.displayMetrics.widthInches.toString();
    displayHeightInches = dataInfo.displayMetrics.heightInches.toString();
    displayHeightPixels = dataInfo.displayMetrics.heightPx.toString();
    displayXDpi = dataInfo.displayMetrics.xDpi.toString();
    displayYDpi = dataInfo.displayMetrics.yDpi.toString();
    log('Data Fetching Complete====');

    notifyListeners();
  }
}
