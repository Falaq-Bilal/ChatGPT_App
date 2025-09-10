
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/about_screen.dart';
import 'package:chatgpt_app/view/data_control_screen.dart';
import 'package:chatgpt_app/view/home_screen.dart';
import 'package:chatgpt_app/view/personalized_screen.dart';
import 'package:chatgpt_app/view/security_screen.dart';
import 'package:chatgpt_app/view/upgrade_screen.dart';
import 'package:chatgpt_app/view/voice_screen.dart';
import 'package:flutter/material.dart';

class DesktopSettings extends StatelessWidget {
  const DesktopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Themes.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
       
      ),

      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.settings , color: Themes.white,),
            ),
            title: Text("General" , style: Themes.regular(color: Themes.black),)
          ),
            ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.notifications_none , color: Themes.white,),
            ),
            title: Text("Notifications" , style: Themes.regular(color: Themes.black),)
          ),
          
          

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.person_outline_outlined, color: Themes.white),
            ),
            title: Text(
              "Personalization",
              style: Themes.regular(fontSize: 15, color: Themes.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalizedScreen()),
              );
            },
          ),
            ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfDRHWUEkQklIPAQ7-TXHUjU1XQ_zaBndhQg&s"),
            ),
            title: Text("Connected apps" , style: Themes.regular(color: Themes.black),)
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.tune_outlined, color: Themes.white),
            ),
            title: Text(
              "Data Controls",
              style: Themes.regular(fontSize: 15, color: Themes.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataControlScreen()),
              );
            },
          ),
         
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.security, color: Themes.white),
            ),
            title: Text(
              "Security",
              style: Themes.regular(fontSize: 15, color: Themes.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecurityScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.info_outline, color: Themes.white),
            ),
            title: Text(
              "Account",
              style: Themes.regular(fontSize: 15, color: Themes.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          
        ],
      ),
    );
  }
}
