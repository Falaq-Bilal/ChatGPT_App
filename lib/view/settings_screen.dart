import 'package:chatgpt_app/componenets/custom_drawer.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/about_screen.dart';
import 'package:chatgpt_app/view/data_control_screen.dart';
import 'package:chatgpt_app/view/home_screen.dart';
import 'package:chatgpt_app/view/personalized_screen.dart';
import 'package:chatgpt_app/view/security_screen.dart';
import 'package:chatgpt_app/view/upgrade_screen.dart';
import 'package:chatgpt_app/view/voice_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())); 
          },
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Themes.white,
          ),
        ),
      ),

      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.darkgrey,
              child: Text(
                "FA",
                style: TextStyle(
                  fontSize: 15,
                  color: Themes.white,
                ),
              ),
            ),
            title: Text(
              "Falaq",
              style: TextStyle(
                fontSize: 15,
                color: Themes.white,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.email_outlined, color: Themes.white),
            ),
            title: Text(
              "Email",
              style: TextStyle(
                fontSize: 15,
                color: Themes.white,
              ),
            ),
            subtitle: Text(
              "falaqdevsinn@gmail.com",
              style: TextStyle(fontSize: 12, color: Themes.white),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.workspace_premium_outlined , color: Themes.white,),
            ),
            title: Text(
              "Upgrade to Plus",
              style: TextStyle(
                fontSize: 15,
                color: Themes.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpgradeScreen()),
              );
            },
          ),

          ListTile(
            leading: CircleAvatar(backgroundColor: Themes.black,
            child: Icon(Icons.person_outline_outlined , color: Themes.white,),),
            title: Text(
              "Personalization",
              style: TextStyle(
                fontSize: 15,
              
                color: Themes.white,
              ),
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
            leading: CircleAvatar(backgroundColor: Themes.black,
            child: Icon(Icons.tune_outlined , color: Themes.white,),),
            title: Text(
              "Data Controls",
              style: TextStyle(
                fontSize: 15,
              
                color: Themes.white,
              ),            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataControlScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Themes.black,
            child: Icon(Icons.voice_chat , color: Themes.white,),),
            title: Text(
              "Voice",
              style: TextStyle(
                fontSize: 15,
              
                color: Themes.white,
              ),            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VoiceScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.security  ,color: Themes.white,),
            
            ),
            title: Text(
              "Security",
              style: TextStyle(
                fontSize: 15,
              
                color: Themes.white,
              ),
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
            leading: CircleAvatar(backgroundColor: Themes.black,
            child: Icon(Icons.info_outline , color: Themes.white,),),
            title: Text(
              "About",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Themes.white,
              ),            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.logout, color: Themes.red),
            ),
            title: Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Themes.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
