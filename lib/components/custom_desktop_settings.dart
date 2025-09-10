import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/about_screen.dart';
import 'package:chatgpt_app/view/data_control_screen.dart';
import 'package:chatgpt_app/view/personalized_screen.dart';
import 'package:chatgpt_app/view/security_screen.dart';
import 'package:flutter/material.dart';

class DesktopSettingsDialog extends StatelessWidget {
  const DesktopSettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Themes.black,
      insetPadding: const EdgeInsets.all(30), // dialog screen ke center me
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 500,
        height: 600,
        child: Column(
          children: [
            // custom appbar like header
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

            // list items
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.settings, color: Themes.white),
                    ),
                    title: Text("General",
                        style: Themes.regular(color: Themes.white)),
                        onTap: (){
                          Navigator.pop(context);
                        },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.notifications_none, color: Themes.white),
                    ),
                    title: Text("Notifications",
                        style: Themes.regular(color: Themes.white)),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.person_outline_outlined,
                          color: Themes.white),
                    ),
                    title: Text("Personalization",
                        style:
                            Themes.regular(fontSize: 15, color: Themes.white)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfDRHWUEkQklIPAQ7-TXHUjU1XQ_zaBndhQg&s"),
                    ),
                    title: Text("Connected apps",
                        style: Themes.regular(color: Themes.white)),
                        onTap: (){
                          Navigator.pop(context);
                        },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.tune_outlined, color: Themes.white),
                    ),
                    title: Text("Data Controls",
                        style:
                            Themes.regular(fontSize: 15, color: Themes.white)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.security, color: Themes.white),
                    ),
                    title: Text("Security",
                        style:
                            Themes.regular(fontSize: 15, color: Themes.white)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.info_outline, color: Themes.white),
                    ),
                    title: Text("Account",
                        style:
                            Themes.regular(fontSize: 15, color: Themes.white)),
                    onTap: () {
                      Navigator.pop(context);
    
                    },
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

// Use this anywhere:
void openDesktopSettings(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.4),
    builder: (context) => const DesktopSettingsDialog(),
  );
}
