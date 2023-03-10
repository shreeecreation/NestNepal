import 'package:clientside/src/extensions/dialogs/dialog_extension.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnection extends ChangeNotifier {
  bool _isConnected = false;

  bool get isConnected {
    return _isConnected;
  }

  checkInternetConnectivity(context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      _isConnected = true;
    } else {
      _isConnected = false;
    }
  }
}
