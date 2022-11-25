import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_internet_speed_test/flutter_internet_speed_test.dart';

class HomeProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  bool loading = false;
  setLoading(bool val) {
    loading = val;
    notifyListeners();
  }

  final internetSpeedTest = FlutterInternetSpeedTest();

  bool testInProgress = false;
  double downloadRate = 0;
  int xyz = 1;
  double uploadRate = 0;
  String downloadProgress = '0';
  String uploadProgress = '0';
  int downloadCompletionTime = 0;
  int uploadCompletionTime = 0;
  bool isServerSelectionInProgress = false;

  String? ip;
  String? asn;
  String? isp;

  String unitText = 'Mb/s';

  int speedProgressValue = 0;

  progressFun(val) {
    speedProgressValue = val;
    notifyListeners();
  }

  startSpeedTest() async {
    reset();
    await internetSpeedTest.startTesting(onStarted: () {
      testInProgress = true;
    }, onCompleted: (TestResult download, TestResult upload) {
      if (internetSpeedTest.isLogEnabled) {
        print(
          'the transfer rate ${download.transferRate}, ${upload.transferRate}',
        );
      }
      downloadRate = download.transferRate;
      unitText = download.unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
      downloadProgress = '100';
      downloadCompletionTime = download.durationInMillis;
      uploadRate = upload.transferRate;
      unitText = upload.unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
      uploadProgress = '100';
      uploadCompletionTime = upload.durationInMillis;
      testInProgress = false;
//
    }, onProgress: (double percent, TestResult data) {
      if (internetSpeedTest.isLogEnabled) {
        print('the transfer rate $data.transferRate, the percent $percent');
      }

      unitText = data.unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
      if (data.type == TestType.DOWNLOAD) {
        downloadRate = data.transferRate;
        downloadProgress = percent.toStringAsFixed(2);
        log('downloadRate $downloadRate');
        speedProgressValue = int.parse(downloadRate.toStringAsFixed(2));
        log(speedProgressValue.toString());
        notifyListeners();
        // progressFun(percent.toStringAsFixed(2));
      } else {
        uploadRate = data.transferRate;
        uploadProgress = percent.toStringAsFixed(2);
        log('downloadRate $downloadRate');
        speedProgressValue = int.parse(downloadRate.toStringAsFixed(2));
        log(speedProgressValue.toString());
        notifyListeners();

        // progressFun(percent.toStringAsFixed(2));
      }

 
    }, onError: (String errorMessage, String speedTestError) {
      if (internetSpeedTest.isLogEnabled) {
        print(
            'the errorMessage $errorMessage, the speedTestError $speedTestError');
      }
      reset();
    }, onDefaultServerSelectionInProgress: () {
      isServerSelectionInProgress = true;
    }, onDefaultServerSelectionDone: (Client? client) {
      isServerSelectionInProgress = false;
      ip = client?.ip;
      asn = client?.asn;
      isp = client?.isp;
    }, onDownloadComplete: (TestResult data) {
      downloadRate = data.transferRate;
      unitText = data.unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
      downloadCompletionTime = data.durationInMillis;
    }, onUploadComplete: (TestResult data) {
      uploadRate = data.transferRate;
      unitText = data.unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
      uploadCompletionTime = data.durationInMillis;
    });

    notifyListeners();
  }

  void reset() {
    testInProgress = false;
    downloadRate = 0;
    uploadRate = 0;
    downloadProgress = '0';
    uploadProgress = '0';
    unitText = 'Mb/s';
    downloadCompletionTime = 0;
    uploadCompletionTime = 0;

    notifyListeners();
  }
}
