import 'package:clientside/src/core/themes/appstyles.dart';
import 'package:flutter/material.dart';

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
}
