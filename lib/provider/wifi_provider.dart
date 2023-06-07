import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:flutter/foundation.dart';

class WifiProvider extends ChangeNotifier {
//  Wifi Veriables
  String? wifiName;
  String? wifiBSSID;
  String? wifiIPv4;
  String? wifiIPv6;
  String? wifiGatewayIP;
  String? wifiBroadcast;
  String? wifiSubmask;
  Future<void> initNetworkInfo() async {
    final info = NetworkInfo();
    try {
      if (!kIsWeb && Platform.isIOS) {
        var status = await info.getLocationServiceAuthorization();
        if (status == LocationAuthorizationStatus.notDetermined) {
          status = await info.requestLocationServiceAuthorization();
        }
        if (status == LocationAuthorizationStatus.authorizedAlways ||
            status == LocationAuthorizationStatus.authorizedWhenInUse) {
          wifiName = await info.getWifiName();
          // "FooNetwork"
          wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
          wifiIPv4 = await info.getWifiIP(); // 192.168.1.43
          wifiIPv6 = await info
              .getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
          wifiGatewayIP = await info.getWifiSubmask(); // 255.255.255.0
          wifiBroadcast = await info.getWifiBroadcast(); // 192.168.1.255
          wifiSubmask = await info.getWifiGatewayIP();

          log('Wifi name = $wifiName');
          log('Wifi BSSID = $wifiBSSID');
          notifyListeners();
        } else {
          wifiName = await info.getWifiName();
          // "FooNetwork"
          wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
          wifiIPv4 = await info.getWifiIP(); // 192.168.1.43
          wifiIPv6 = await info
              .getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
          wifiGatewayIP = await info.getWifiSubmask(); // 255.255.255.0
          wifiBroadcast = await info.getWifiBroadcast(); // 192.168.1.255
          wifiSubmask = await info.getWifiGatewayIP();

          log('Wifi name = $wifiName');
          log('Wifi BSSID = $wifiBSSID');
          notifyListeners();
        }
      } else {
        wifiName = await info.getWifiName();
        wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
        wifiIPv4 = await info.getWifiIP(); // 192.168.1.43
        wifiIPv6 =
            await info.getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
        wifiGatewayIP = await info.getWifiSubmask(); // 255.255.255.0
        wifiBroadcast = await info.getWifiBroadcast(); // 192.168.1.255
        wifiSubmask = await info.getWifiGatewayIP();

        log('Wifi name = $wifiName');
        log('Wifi BSSID = $wifiBSSID');
        notifyListeners();
      }
    } on PlatformException catch (e) {
      log('Failed to get Wifi Name', error: e);
      wifiName = 'Failed to get Wifi Name';
    }
    notifyListeners();
  }
}
