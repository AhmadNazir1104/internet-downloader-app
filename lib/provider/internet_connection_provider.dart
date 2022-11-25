import 'package:flutter/material.dart';
import 'package:internet_speed/services/internet_connection_service.dart';
import 'package:provider/provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectionProvider with ChangeNotifier {
  Map _source = {ConnectivityResult.none: false};
  final NetworkConnectivity _networkConnectivity = NetworkConnectivity.instance;
  bool internetConnection = false;

  initStateNetCheck(BuildContext context) {
    _networkConnectivity.initialise();
    _networkConnectivity.myStream.listen((source) {
      _source = source;
      // print('source $_source');

      switch (_source.keys.toList()[0]) {
        case ConnectivityResult.mobile:
          internetConnection = _source.values.toList()[0] ? true : false;
          notifyListeners();
          break;
        case ConnectivityResult.wifi:
          internetConnection = _source.values.toList()[0] ? true : false;
          notifyListeners();
          break;
        case ConnectivityResult.none:
        default:
          internetConnection = false;
          notifyListeners();
      }

      // Provider.of<iCloudStorageProvider>(context, listen: false)
      //     .checkStoragePrerequisties(context);
    });

    notifyListeners();
  }

  checkInternetStatus() {
    _networkConnectivity.initialise();
    _networkConnectivity.myStream.listen((source) {
      _source = source;
      switch (_source.keys.toList()[0]) {
        case ConnectivityResult.mobile:
          internetConnection = _source.values.toList()[0] ? true : false;
          notifyListeners();
          break;
        case ConnectivityResult.wifi:
          internetConnection = _source.values.toList()[0] ? true : false;
          notifyListeners();
          break;
        case ConnectivityResult.none:
        default:
          internetConnection = false;
          notifyListeners();
      }
    });

    notifyListeners();
  }
}
