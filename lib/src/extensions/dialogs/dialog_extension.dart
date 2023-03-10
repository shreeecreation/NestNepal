import 'dart:io';

import 'package:clientside/src/core/themes/appstyles.dart';
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

class DialogExtension extends Dialog {
  const DialogExtension({super.key});

  static Future<bool> onBackButtonPressed(BuildContext context) async {
    bool? exitapp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Nest Nepal ", style: AppStyles.text20PxMedium),
            content: const Text("Do you sure want to close the app ?"),
            actions: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Yes", style: TextStyle(color: Colors.white))),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("No", style: TextStyle(color: Colors.white))),
            ],
          );
        });
    return exitapp ?? false;
  }

  static void noInternetConnection(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: const Text("Oops !", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
            content: const Icon(Icons.signal_wifi_connected_no_internet_4, size: 50, color: Colors.black),
            actions: <Widget>[
              OutlinedButton(
                onPressed: () {
                  exit(0);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text('Exit'),
              ),
              OutlinedButton(
                onPressed: () {
                  Restart.restartApp();
                },
                style: OutlinedButton.styleFrom(foregroundColor: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                child: const Text('Retry'),
              ),
            ],
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
