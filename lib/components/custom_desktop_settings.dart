import 'package:chatgpt_app/components/custom_connected_apps.dart';
import 'package:chatgpt_app/components/custom_data_controls.dart';
import 'package:chatgpt_app/components/custom_general.dart';
import 'package:chatgpt_app/components/custom_notifications.dart';
import 'package:chatgpt_app/components/custom_personalization.dart';
import 'package:chatgpt_app/components/custom_security.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class DesktopSettingsDialog extends StatefulWidget {
  const DesktopSettingsDialog({super.key});

  @override
  State<DesktopSettingsDialog> createState() => _DesktopSettingsDialogState();
}
Widget? selectedScreen;
class _DesktopSettingsDialogState extends State<DesktopSettingsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Themes.black,
      insetPadding: const EdgeInsets.all(30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 700,
        height: 600,
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Themes.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  Text(
                    "Settings",
                    style: Themes.regular(fontSize: 18, color: Themes.white),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(Icons.close, color: Themes.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            // Body Row: Left options + Right blank screen
            Expanded(
              child: Row(
                children: [
                  // LEFT SIDE (40%) → Options
                  Container(
                    width: 280,
                    color: Themes.black,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.settings, color: Themes.white),
                          title: Text("General", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            
                            setState(() {
                              selectedScreen = GeneralSettings();
                            });
                            
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.notifications_none, color: Themes.white),
                          title: Text("Notifications", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            setState(() {
                              selectedScreen = NotificationsSettings(); 
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.person_outline_outlined, color: Themes.white),
                          title: Text("Personalization", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            setState(() {
                              selectedScreen = CustomPersonalization();
                            });
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Themes.black,
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfDRHWUEkQklIPAQ7-TXHUjU1XQ_zaBndhQg&s",
                            ),
                          ),
                          title: Text("Connected apps", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            setState(() {
                              selectedScreen = CustomConnectedApps();
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.tune_outlined, color: Themes.white),
                          title: Text("Data Controls", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            setState(() {
                              selectedScreen =CustomDataControls(); 
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.security, color: Themes.white),
                          title: Text("Security", style: Themes.regular(color: Themes.white)),
                          onTap: (){
                            setState(() {
                              selectedScreen = CustomSecurity(); 
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.info_outline, color: Themes.white),
                          title: Text("Account", style: Themes.regular(color: Themes.white)),
                        ),
                      ],
                    ),
                  ),

                  // RIGHT SIDE 
                  Expanded(
                    child: Container(
                      color: Themes.black,
                      child: selectedScreen ?? SizedBox.shrink(),
                    ),
                    ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
