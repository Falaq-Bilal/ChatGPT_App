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
      barrierColor: Colors.transparent, 
      builder: (context) {
        return Align(
          alignment: Alignment.bottomLeft,
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
                      leading: Icon(Icons.person_outline , color: Themes.grey,),
                      title: Text("falaqdevsinn@gmail.com" ,  style: Themes.regular( fontSize:12,color: Themes.grey
                      ),),
                    ),
  
                    ListTile(
                      leading: const Icon(Icons.upgrade, color: Themes.white),
                      title:  Text("Upgrade Plan",
                          style: Themes.regular(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> UpgradeScreen()));
                      },
                    ),
                    ListTile(
                      leading:  Icon(Icons.settings, color: Colors.white),
                      title:  Text("Settings",
                          style: Themes.regular(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(context: context,
                        barrierColor: Themes.black.withOpacity(0.4),
                         builder: (context)=> DesktopSettingsDialog());
                      
                      },
                    ),
                    Divider(color: Colors.white24,),
                    ListTile(
                      leading:  Icon(Icons.help_outline,
                          color: Colors.white),
                      title:  Text("Help",
                          style: Themes.regular(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                        openHelpDialog(context);
                      },
                    ),
                    ListTile(
                      leading:  Icon(Icons.logout, color: Colors.white),
                      title:  Text("Logout",
                          style: Themes.regular(color: Themes.white)),
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
