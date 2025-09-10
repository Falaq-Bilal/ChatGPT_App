import 'package:chatgpt_app/components/custom_desktop_settings.dart';
import 'package:chatgpt_app/components/custom_help_dialog.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/desktop_settings.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:chatgpt_app/view/upgrade_screen.dart';
import 'package:flutter/material.dart';

class BottomLeftDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent, // background transparent
      builder: (context) {
        return Align(
          alignment: Alignment.bottomLeft, // 👈 bottom-left me fix kar diya
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Material(
              color: Themes.darkgrey,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 220,
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.upgrade, color: Colors.white),
                      title: const Text("Upgrade Plan",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> UpgradeScreen()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings, color: Colors.white),
                      title: const Text("Settings",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(context: context,
                        barrierColor: Themes.black.withOpacity(0.4),
                         builder: (context)=> DesktopSettingsDialog());
                      
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.help_outline,
                          color: Colors.white),
                      title: const Text("Help",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        openHelpDialog(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout, color: Colors.white),
                      title: const Text("Logout",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
